import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:etgy_openapi_client/etgy_openapi_client.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/device/device_id_service.dart';
import '../../../core/errors/app_exception.dart';
import '../../../core/models/user_profile.dart';
import '../../../core/network/generated_openapi_provider.dart';
import '../../../core/providers/app_providers.dart';
import '../models/auth_session.dart';

final authRemoteDataSourceProvider = Provider<AuthRemoteDataSource>((Ref ref) {
  final config = ref.watch(appConfigProvider);
  final openapiClient = ref.watch(generatedOpenapiClientProvider);
  final deviceIdService = ref.watch(deviceIdServiceProvider);

  if (config.enableMockAuth) {
    if (kDebugMode) {
      debugPrint(
        '[AuthRemoteDataSource] Using MOCK auth (ENABLE_MOCK_AUTH=true). '
        'apiBaseUrl=${config.apiBaseUrl}',
      );
    }
    return MockAuthRemoteDataSource();
  }

  if (kDebugMode) {
    debugPrint(
      '[AuthRemoteDataSource] Using REAL auth. apiBaseUrl=${config.apiBaseUrl}',
    );
  }
  return OpenApiAuthRemoteDataSource(openapiClient, deviceIdService);
});

abstract class AuthRemoteDataSource {
  Future<AuthSession> signIn({required String account, required String password});

  Future<AuthSession> confirmDeviceBinding({required String bindToken});
}

class MockAuthRemoteDataSource implements AuthRemoteDataSource {
  @override
  Future<AuthSession> signIn({
    required String account,
    required String password,
  }) async {
    await Future<void>.delayed(const Duration(milliseconds: 300));

    if (password != '123456') {
      throw const AppException(
        type: AppExceptionType.unauthorized,
        message: '账号或密码错误',
      );
    }

    final status = account.toLowerCase() == 'frozen'
        ? AccountStatus.frozen
        : AccountStatus.pendingActivation;

    return AuthSession(
      token: 'demo-jwt-token-${DateTime.now().millisecondsSinceEpoch}',
      status: status,
      user: UserProfile(
        name: account,
        school: '演示学校',
        grade: '三年级',
        academy: '演示学院',
      ),
      isDeviceBound: false,
    );
  }

  @override
  Future<AuthSession> confirmDeviceBinding({required String bindToken}) async {
    await Future<void>.delayed(const Duration(milliseconds: 250));

    return AuthSession(
      token: 'demo-jwt-token-${DateTime.now().millisecondsSinceEpoch}',
      status: AccountStatus.active,
      user: const UserProfile(
        name: '演示用户',
        school: '演示学校',
        grade: '三年级',
        academy: '演示学院',
      ),
      isDeviceBound: true,
    );
  }
}

class OpenApiAuthRemoteDataSource implements AuthRemoteDataSource {
  OpenApiAuthRemoteDataSource(this._openapiClient, this._deviceIdService);

  final EtgyOpenapiClient _openapiClient;
  final DeviceIdService _deviceIdService;

  bool _isSuccessCode(int code) => code == 0 || code == 200 || code == 201;

  Map<String, dynamic> _asJsonMap(dynamic raw) {
    if (raw is Map) {
      return raw.map((key, value) => MapEntry(key.toString(), value));
    }
    if (raw is String) {
      try {
        final decoded = jsonDecode(raw);
        if (decoded is Map) {
          return decoded.map((key, value) => MapEntry(key.toString(), value));
        }
      } catch (_) {
        final trimmed = raw.trim();
        final preview = trimmed.length > 200 ? '${trimmed.substring(0, 200)}...' : trimmed;
        throw AppException(
          type: AppExceptionType.server,
          message: '服务响应不是有效 JSON：$preview',
        );
      }
    }
    throw const AppException(
      type: AppExceptionType.server,
      message: '服务响应格式异常，请稍后重试',
    );
  }

  AppException _toBackendException({
    required int? code,
    required String? message,
  }) {
    final normalizedMessage = (message == null || message.trim().isEmpty)
        ? '请求失败，请稍后重试'
        : message.trim();

    // Without a published code table, keep classification conservative.
    return AppException(
      type: AppExceptionType.unknown,
      message: normalizedMessage,
    );
  }

  @override
  Future<AuthSession> signIn({
    required String account,
    required String password,
  }) async {
    final deviceId = await _deviceIdService.getOrCreate();

    final response = await _openapiClient.dio.post<dynamic>(
      '/api/auth/login',
      data: <String, dynamic>{
        'username': account,
        'password': password,
        'role': 'CHILD',
        'deviceId': deviceId,
      },
      options: Options(contentType: Headers.jsonContentType),
    );

    final envelope = _asJsonMap(response.data);
    final code = envelope['code'] as int?;
    final message = envelope['message'] as String?;
    if (code != null && !_isSuccessCode(code)) {
      throw _toBackendException(code: code, message: message);
    }

    final data = envelope['data'];
    if (data is! Map) {
      throw _toBackendException(code: code, message: message ?? '服务返回为空，请稍后重试');
    }

    final dataMap = data.map((key, value) => MapEntry(key.toString(), value));

    final bindRequired = dataMap['bindRequired'] == true;
    final bindToken = (dataMap['bindToken'] as String?) ?? '';

    if (bindRequired && bindToken.isNotEmpty) {
      final userMap = _toUserMap(dataMap['user']);
      final status = _parseStatus((userMap['status'] as String?) ?? 'pendingActivation');
      final user = UserProfile(
        name: _readName(userMap, fallback: account),
        school: (userMap['school'] as String?) ?? '',
        grade: (userMap['grade'] as String?) ?? '',
        academy: (userMap['academy'] as String?) ??
            (userMap['collegeName'] as String?) ??
            '',
      );

      return AuthSession(
        token: '',
        status: status,
        user: user,
        isDeviceBound: false,
        bindToken: bindToken,
      );
    }

    final token = (dataMap['token'] as String?) ?? '';
    final userMap = _toUserMap(dataMap['user']);
    final status = _parseStatus((userMap['status'] as String?) ?? 'pendingActivation');
    final deviceBound =
        (userMap['isDeviceBound'] as bool?) ?? (userMap['deviceBound'] as bool?) ?? false;

    final user = UserProfile(
      name: _readName(userMap, fallback: account),
      school: (userMap['school'] as String?) ?? '',
      grade: (userMap['grade'] as String?) ?? '',
      academy: (userMap['academy'] as String?) ??
          (userMap['collegeName'] as String?) ??
          '',
    );

    if (token.isEmpty) {
      throw _toBackendException(code: code, message: message ?? '登录失败，请重试');
    }

    return AuthSession(
      token: token,
      status: status,
      user: user,
      isDeviceBound: deviceBound,
    );
  }

  @override
  Future<AuthSession> confirmDeviceBinding({required String bindToken}) async {

    final response = await _openapiClient.dio.post<dynamic>(
      '/api/auth/device/bind/confirm',
      data: <String, dynamic>{
        'bindToken': bindToken,
      },
      options: Options(contentType: Headers.jsonContentType),
    );

    final envelope = _asJsonMap(response.data);
    final code = envelope['code'] as int?;
    final message = envelope['message'] as String?;
    if (code != null && !_isSuccessCode(code)) {
      throw _toBackendException(code: code, message: message);
    }

    final data = envelope['data'];
    if (data is! Map) {
      throw _toBackendException(code: code, message: message ?? '设备绑定失败，请重新登录');
    }

    final dataMap = data.map((key, value) => MapEntry(key.toString(), value));
    final token = (dataMap['token'] as String?) ?? '';
    if (token.isEmpty) {
      throw _toBackendException(code: code, message: message ?? '设备绑定失败，请重新登录');
    }

    final userMap = _toUserMap(dataMap['user']);
    final status = _parseStatus((userMap['status'] as String?) ?? 'active');
    final user = UserProfile(
      name: _readName(userMap, fallback: '用户'),
      school: (userMap['school'] as String?) ?? '',
      grade: (userMap['grade'] as String?) ?? '',
      academy: (userMap['academy'] as String?) ?? (userMap['collegeName'] as String?) ?? '',
    );

    return AuthSession(
      token: token,
      status: status,
      user: user,
      isDeviceBound: true,
    );
  }

  AccountStatus _parseStatus(String raw) {
    switch (raw) {
      case 'active':
        return AccountStatus.active;
      case 'frozen':
        return AccountStatus.frozen;
      case 'pendingActivation':
      default:
        return AccountStatus.pendingActivation;
    }
  }

  Map<String, dynamic> _toUserMap(Object? user) {
    final dynamic raw = user;
    if (raw is Map) {
      return raw.map(
        (dynamic key, dynamic value) => MapEntry(key.toString(), value),
      );
    }
    return <String, dynamic>{};
  }

  String _readName(Map<String, dynamic> userMap, {required String fallback}) {
    final String? realName = userMap['realName'] as String?;
    final String? username = userMap['username'] as String?;
    final String? name = userMap['name'] as String?;

    if (realName != null && realName.isNotEmpty) {
      return realName;
    }
    if (name != null && name.isNotEmpty) {
      return name;
    }
    if (username != null && username.isNotEmpty) {
      return username;
    }
    return fallback;
  }
}
