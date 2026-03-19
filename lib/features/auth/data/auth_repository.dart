import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/errors/app_exception.dart';
import '../../../core/models/user_profile.dart';
import '../../../core/storage/secure_storage_service.dart';
import '../models/auth_session.dart';
import 'auth_remote_data_source.dart';

final authRepositoryProvider = Provider<AuthRepository>((Ref ref) {
  final storage = ref.watch(secureStorageServiceProvider);
  final remoteDataSource = ref.watch(authRemoteDataSourceProvider);
  return AuthRepository(storage: storage, remoteDataSource: remoteDataSource);
});

class AuthRepository {
  AuthRepository({required this.storage, required this.remoteDataSource});

  final SecureStorageService storage;
  final AuthRemoteDataSource remoteDataSource;

  static const String _sessionKey = 'auth_session_v1';
  static const String _failedAttemptsKey = 'auth_failed_attempts_v1';
  static const String _lockUntilMsKey = 'auth_lock_until_ms_v1';
  static const int _maxFailedAttempts = 3;
  static const Duration _lockDuration = Duration(minutes: 15);

  Future<AuthSession?> restoreSession() async {
    try {
      final raw = await storage.read(key: _sessionKey);
      if (raw == null || raw.isEmpty) {
        return null;
      }
      final map = jsonDecode(raw) as Map<String, dynamic>;
      final session = AuthSession.fromJson(map);
      if (session.token.isEmpty) {
        return null;
      }
      return session;
    } catch (_) {
      return null;
    }
  }

  Future<AuthSession> signIn({
    required String account,
    required String password,
  }) async {
    await _ensureNotLocked();

    try {
      final session = await remoteDataSource.signIn(
        account: account,
        password: password,
      );
      await persistSession(session);
      await _resetFailedAttempts();
      return session;
    } catch (error) {
      final appError = error is AppException
          ? error
          : const AppException(
              type: AppExceptionType.unknown,
              message: '登录失败，请稍后重试',
            );

      if (appError.type == AppExceptionType.unauthorized ||
          appError.type == AppExceptionType.validation) {
        final attempts = await _increaseFailedAttempts();
        if (attempts >= _maxFailedAttempts) {
          final lockUntil = DateTime.now().add(_lockDuration);
          await storage.write(
            key: _lockUntilMsKey,
            value: lockUntil.millisecondsSinceEpoch.toString(),
          );
          throw const AppException(
            type: AppExceptionType.forbidden,
            message: '连续失败 3 次，账号已临时锁定 15 分钟',
          );
        }

        throw AppException(
          type: appError.type,
          message: '账号或密码错误，还可尝试 ${_maxFailedAttempts - attempts} 次',
        );
      }

      rethrow;
    }
  }

  Future<AuthSession> confirmDeviceBinding(AuthSession session) async {
    final updated = AuthSession(
      token: session.token,
      status: AccountStatus.active,
      user: session.user,
      isDeviceBound: true,
    );
    await persistSession(updated);
    return updated;
  }

  Future<void> persistSession(AuthSession session) async {
    await storage.write(key: _sessionKey, value: jsonEncode(session.toJson()));
  }

  Future<void> clearSession() async {
    await storage.delete(key: _sessionKey);
  }

  Future<void> _ensureNotLocked() async {
    final lockUntilRaw = await storage.read(key: _lockUntilMsKey);
    if (lockUntilRaw == null || lockUntilRaw.isEmpty) {
      return;
    }

    final lockUntilMs = int.tryParse(lockUntilRaw);
    if (lockUntilMs == null) {
      await storage.delete(key: _lockUntilMsKey);
      return;
    }

    final lockUntil = DateTime.fromMillisecondsSinceEpoch(lockUntilMs);
    final now = DateTime.now();
    if (now.isAfter(lockUntil)) {
      await storage.delete(key: _lockUntilMsKey);
      await _resetFailedAttempts();
      return;
    }

    final remain = lockUntil.difference(now).inMinutes + 1;
    throw AppException(
      type: AppExceptionType.forbidden,
      message: '账号已锁定，请约 $remain 分钟后重试',
    );
  }

  Future<int> _increaseFailedAttempts() async {
    final raw = await storage.read(key: _failedAttemptsKey);
    final current = int.tryParse(raw ?? '') ?? 0;
    final next = current + 1;
    await storage.write(key: _failedAttemptsKey, value: next.toString());
    return next;
  }

  Future<void> _resetFailedAttempts() async {
    await storage.write(key: _failedAttemptsKey, value: '0');
    await storage.delete(key: _lockUntilMsKey);
  }
}
