import '../../core/models/user_profile.dart';

class AuthState {
  const AuthState({
    required this.status,
    required this.token,
    required this.user,
    required this.isDeviceBound,
  });

  final AccountStatus status;
  final String? token;
  final UserProfile? user;
  final bool isDeviceBound;

  bool get isLoggedIn => token != null;

  AuthState copyWith({
    AccountStatus? status,
    String? token,
    UserProfile? user,
    bool? isDeviceBound,
  }) {
    return AuthState(
      status: status ?? this.status,
      token: token ?? this.token,
      user: user ?? this.user,
      isDeviceBound: isDeviceBound ?? this.isDeviceBound,
    );
  }

  static const unauthenticated = AuthState(
    status: AccountStatus.pendingActivation,
    token: null,
    user: null,
    isDeviceBound: false,
  );
}
