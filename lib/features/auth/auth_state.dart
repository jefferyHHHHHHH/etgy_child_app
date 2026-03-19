import '../../core/models/user_profile.dart';

class AuthState {
  const AuthState({
    required this.status,
    required this.token,
    required this.user,
    required this.isDeviceBound,
    required this.isLoading,
    required this.errorMessage,
  });

  final AccountStatus status;
  final String? token;
  final UserProfile? user;
  final bool isDeviceBound;
  final bool isLoading;
  final String? errorMessage;

  bool get isLoggedIn => token != null;

  AuthState copyWith({
    AccountStatus? status,
    String? token,
    UserProfile? user,
    bool? isDeviceBound,
    bool? isLoading,
    String? errorMessage,
    bool clearToken = false,
    bool clearUser = false,
    bool clearError = false,
  }) {
    return AuthState(
      status: status ?? this.status,
      token: clearToken ? null : (token ?? this.token),
      user: clearUser ? null : (user ?? this.user),
      isDeviceBound: isDeviceBound ?? this.isDeviceBound,
      isLoading: isLoading ?? this.isLoading,
      errorMessage: clearError ? null : (errorMessage ?? this.errorMessage),
    );
  }

  static const unauthenticated = AuthState(
    status: AccountStatus.pendingActivation,
    token: null,
    user: null,
    isDeviceBound: false,
    isLoading: false,
    errorMessage: null,
  );
}
