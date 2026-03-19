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
  @override
  AuthState build() {
    _restoreSession();
    return AuthState.unauthenticated;
  }

  Future<void> _restoreSession() async {
    try {
      final session = await ref.read(authRepositoryProvider).restoreSession();

      if (session == null) {
        state = AuthState.unauthenticated.copyWith(isHydrating: false);
        return;
      }

      state = AuthState(
        status: session.status,
        token: session.token,
        user: session.user,
        isDeviceBound: session.isDeviceBound,
        isLoading: false,
        isHydrating: false,
        errorMessage: null,
      );
    } catch (_) {
      state = AuthState.unauthenticated.copyWith(
        isHydrating: false,
        errorMessage: '会话恢复失败，请重新登录',
      );
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
    final token = state.token;
    final user = state.user;
    if (token == null || user == null) {
      state = state.copyWith(errorMessage: '登录状态异常，请重新登录');
      return;
    }

    try {
      final updated = await ref.read(authRepositoryProvider).confirmDeviceBinding(
            AuthSession(
              token: token,
              status: state.status,
              user: user,
              isDeviceBound: state.isDeviceBound,
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
      clearUser: true,
      clearError: true,
    );
  }

  void clearError() {
    state = state.copyWith(clearError: true);
  }

  AuthState _fromSession(AuthSession session) {
    return AuthState(
      status: session.status,
      token: session.token,
      user: session.user,
      isDeviceBound: session.isDeviceBound,
      isLoading: false,
      isHydrating: false,
      errorMessage: null,
    );
  }
}
