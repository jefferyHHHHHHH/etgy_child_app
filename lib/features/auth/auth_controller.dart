import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/errors/app_exception_mapper.dart';
import '../../core/models/user_profile.dart';
import 'auth_state.dart';

final authControllerProvider = NotifierProvider<AuthController, AuthState>(
  AuthController.new,
);

class AuthController extends Notifier<AuthState> {
  @override
  AuthState build() {
    return AuthState.unauthenticated;
  }

  Future<void> signIn({
    required String account,
    required String password,
  }) async {
    state = state.copyWith(isLoading: true, clearError: true);

    try {
      // Skeleton phase: keep UI flow runnable before backend contract is finalized.
      // Once OpenAPI generated client is ready, replace this with real login endpoint.
      await Future<void>.delayed(const Duration(milliseconds: 300));

      state = AuthState(
        status: AccountStatus.pendingActivation,
        token: 'demo-jwt-token',
        user: const UserProfile(
          name: '演示用户',
          school: '演示学校',
          grade: '三年级',
          academy: '演示学院',
        ),
        isDeviceBound: false,
        isLoading: false,
        errorMessage: null,
      );
    } catch (error) {
      final appError = AppExceptionMapper.from(error);
      state = state.copyWith(
        isLoading: false,
        errorMessage: appError.message,
      );
    }
  }

  Future<void> confirmDeviceBinding() async {
    // Skeleton only: replace with real bind-device API.
    state = state.copyWith(
      status: AccountStatus.active,
      isDeviceBound: true,
      isLoading: false,
      clearError: true,
    );
  }

  Future<void> signOut() async {
    state = state.copyWith(
      status: AccountStatus.pendingActivation,
      isDeviceBound: false,
      isLoading: false,
      clearToken: true,
      clearUser: true,
      clearError: true,
    );
  }

  void clearError() {
    state = state.copyWith(clearError: true);
  }
}
