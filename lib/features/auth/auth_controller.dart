import 'package:flutter_riverpod/flutter_riverpod.dart';

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

  Future<void> signIn({required String account, required String password}) async {
    // Skeleton only: replace with real API call + JWT + lockout policy.
    // For now, we simulate a successful login but require first-time device binding.
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
    );
  }

  Future<void> confirmDeviceBinding() async {
    // Skeleton only: replace with real bind-device API.
    state = state.copyWith(
      status: AccountStatus.active,
      isDeviceBound: true,
    );
  }

  Future<void> signOut() async {
    state = AuthState.unauthenticated;
  }
}
