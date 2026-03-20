import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/errors/app_exception_mapper.dart';
import '../../core/models/user_profile.dart';
import 'auth_state.dart';
import 'data/auth_repository.dart';
import 'models/auth_session.dart';

final authControllerProvider = NotifierProvider<AuthController, AuthState>(
  AuthController.new,
);

class AuthController extends Notifier<AuthState> {
  bool _restoreStarted = false;

  @override
  AuthState build() {
    // Important: `build()` may run more than once (e.g. provider rebuild).
    // Never reset state back to hydrating=true after we've already started.
    if (_restoreStarted) {
      return state;
    }

    _restoreStarted = true;

    if (kDebugMode) {
      debugPrint('[AuthController] build() called; scheduling session restore');
    }

    Future.microtask(_restoreSession);
    return AuthState.unauthenticated;
  }

  void forceStopHydration({String? message}) {
    if (!state.isHydrating) {
      return;
    }

    state = AuthState.unauthenticated.copyWith(
      isHydrating: false,
      errorMessage: message,
    );
  }

  Future<void> _restoreSession() async {
    // Secondary watchdog: if something blocks long enough that Future.timeout
    // doesn't get a chance to resolve, we still avoid an infinite launch spinner.
    final watchdog = Timer(const Duration(seconds: 8), () {
      if (state.isHydrating) {
        if (kDebugMode) {
          debugPrint('[AuthController] hydration watchdog fired');
        }
        forceStopHydration(message: '启动超时，请检查网络或重试');
      }
    });

    try {
      // Defensive timeout: prevents the app from being stuck on the launch
      // spinner forever if secure storage or platform channels hang.
      if (kDebugMode) {
        debugPrint('[AuthController] restoreSession() begin');
      }
      final session = await ref
          .read(authRepositoryProvider)
          .restoreSession()
          .timeout(const Duration(seconds: 5));

      if (kDebugMode) {
        debugPrint('[AuthController] restoreSession() done; hasSession=${session != null}');
      }

      if (session == null) {
        state = AuthState.unauthenticated.copyWith(isHydrating: false);
        return;
      }

      state = AuthState(
        status: session.status,
        token: session.token,
        user: session.user,
        isDeviceBound: session.isDeviceBound,
        bindToken: null,
        isLoading: false,
        isHydrating: false,
        errorMessage: null,
      );
    } on TimeoutException {
      if (kDebugMode) {
        debugPrint('[AuthController] restoreSession() timeout');
      }
      state = AuthState.unauthenticated.copyWith(
        isHydrating: false,
        errorMessage: '启动超时，请检查网络或重试',
      );
    } catch (error, stackTrace) {
      if (kDebugMode) {
        debugPrint('[AuthController] restoreSession() failed: $error');
        debugPrint(stackTrace.toString());
      }
      state = AuthState.unauthenticated.copyWith(
        isHydrating: false,
        errorMessage: '会话恢复失败，请重新登录',
      );
    } finally {
      watchdog.cancel();
    }
  }

  Future<void> signIn({
    required String account,
    required String password,
  }) async {
    state = state.copyWith(isLoading: true, clearError: true, isHydrating: false);

    try {
      final session = await ref
          .read(authRepositoryProvider)
          .signIn(account: account, password: password);

      state = _fromSession(session);
    } catch (error) {
      final appError = AppExceptionMapper.from(error);
      state = state.copyWith(
        isLoading: false,
        isHydrating: false,
        errorMessage: appError.message,
      );
    }
  }

  Future<void> confirmDeviceBinding() async {
    final bindToken = state.bindToken;
    final user = state.user;
    if (bindToken == null || bindToken.isEmpty || user == null) {
      state = state.copyWith(errorMessage: '绑定凭证已失效，请重新登录');
      return;
    }

    try {
      final updated = await ref.read(authRepositoryProvider).confirmDeviceBinding(
            AuthSession(
              token: '',
              status: state.status,
              user: user,
              isDeviceBound: state.isDeviceBound,
              bindToken: bindToken,
            ),
          );
      state = _fromSession(updated);
    } catch (error) {
      final appError = AppExceptionMapper.from(error);
      state = state.copyWith(errorMessage: appError.message);
    }
  }

  Future<void> signOut() async {
    await ref.read(authRepositoryProvider).clearSession();
    state = state.copyWith(
      status: AccountStatus.pendingActivation,
      isDeviceBound: false,
      isLoading: false,
      isHydrating: false,
      clearToken: true,
      clearBindToken: true,
      clearUser: true,
      clearError: true,
    );
  }

  void clearError() {
    state = state.copyWith(clearError: true);
  }

  AuthState _fromSession(AuthSession session) {
    final token = session.token.trim();
    final normalizedToken = token.isEmpty ? null : token;
    final bindToken = session.bindToken;

    return AuthState(
      status: session.status,
      token: normalizedToken,
      user: session.user,
      isDeviceBound: session.isDeviceBound,
      bindToken: (bindToken == null || bindToken.isEmpty) ? null : bindToken,
      isLoading: false,
      isHydrating: false,
      errorMessage: null,
    );
  }
}
