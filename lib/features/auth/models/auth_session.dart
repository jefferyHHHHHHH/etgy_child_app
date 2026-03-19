import '../../../core/models/user_profile.dart';

class AuthSession {
  const AuthSession({
    required this.token,
    required this.status,
    required this.user,
    required this.isDeviceBound,
  });

  factory AuthSession.fromJson(Map<String, dynamic> json) {
    return AuthSession(
      token: (json['token'] as String?) ?? '',
      status: _parseStatus((json['status'] as String?) ?? ''),
      isDeviceBound: (json['isDeviceBound'] as bool?) ?? false,
      user: UserProfile.fromJson(
        (json['user'] as Map<String, dynamic>?) ?? <String, dynamic>{},
      ),
    );
  }

  final String token;
  final AccountStatus status;
  final UserProfile user;
  final bool isDeviceBound;

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'token': token,
      'status': status.name,
      'isDeviceBound': isDeviceBound,
      'user': user.toJson(),
    };
  }

  static AccountStatus _parseStatus(String raw) {
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
}
