import '../../core/models/user_profile.dart';

class AuthState {
  const AuthState({
    required this.status,
    required this.token,
    required this.user,
    required this.isDeviceBound,
    required this.bindToken,
    required this.isLoading,
    required this.isHydrating,
    required this.errorMessage,
  });

  final AccountStatus status;
  final String? token;
  final UserProfile? user;
  final bool isDeviceBound;
  final String? bindToken;
  final bool isLoading;
  final bool isHydrating;
  final String? errorMessage;

  bool get isLoggedIn =>
      (token != null && token!.isNotEmpty) ||
      (bindToken != null && bindToken!.isNotEmpty);

  AuthState copyWith({
    AccountStatus? status,
    String? token,
    UserProfile? user,
    bool? isDeviceBound,
    String? bindToken,
    bool? isLoading,
    bool? isHydrating,
    String? errorMessage,
    bool clearToken = false,
    bool clearUser = false,
    bool clearError = false,
    bool clearBindToken = false,
  }) {
    return AuthState(
      status: status ?? this.status,
      token: clearToken ? null : (token ?? this.token),
      user: clearUser ? null : (user ?? this.user),
      isDeviceBound: isDeviceBound ?? this.isDeviceBound,
      bindToken: clearBindToken ? null : (bindToken ?? this.bindToken),
      isLoading: isLoading ?? this.isLoading,
      isHydrating: isHydrating ?? this.isHydrating,
      errorMessage: clearError ? null : (errorMessage ?? this.errorMessage),
    );
  }

  static const unauthenticated = AuthState(
    status: AccountStatus.pendingActivation,
    token: null,
    user: null,
    isDeviceBound: false,
    bindToken: null,
    isLoading: false,
    isHydrating: true,
    errorMessage: null,
  );
}
