import 'package:etgy_openapi_client/etgy_openapi_client.dart';
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
    return MockAuthRemoteDataSource();
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

  @override
  Future<AuthSession> signIn({
    required String account,
    required String password,
  }) async {
    final deviceId = await _deviceIdService.getOrCreate();

    final response = await _openapiClient.getAuthApi().apiAuthLoginPost(
      apiAuthLoginPostRequest: ApiAuthLoginPostRequest(
        username: account,
        password: password,
        role: ApiAuthLoginPostRequestRoleEnum.CHILD,
        deviceId: deviceId,
      ),
    );

    final loginData = response.data?.data;
    if (loginData == null) {
      throw const AppException(
        type: AppExceptionType.server,
        message: '服务返回为空，请稍后重试',
      );
    }

    if (loginData.bindRequired && loginData.bindToken.isNotEmpty) {
      final userMap = _toUserMap(loginData.user);
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
        bindToken: loginData.bindToken,
      );
    }

    final token = loginData.token;

    final userMap = _toUserMap(loginData.user);
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
      throw const AppException(
        type: AppExceptionType.unauthorized,
        message: '登录失败，请重试',
      );
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
    final response = await _openapiClient.getAuthApi().apiAuthDeviceBindConfirmPost(
          apiAuthDeviceBindConfirmPostRequest: ApiAuthDeviceBindConfirmPostRequest(
            bindToken: bindToken,
          ),
        );

    final data = response.data?.data;
    if (data == null || data.token.isEmpty) {
      throw const AppException(
        type: AppExceptionType.unauthorized,
        message: '设备绑定失败，请重新登录',
      );
    }

    final userMap = _toUserMap(data.user);
    final status = _parseStatus((userMap['status'] as String?) ?? 'active');
    final user = UserProfile(
      name: _readName(userMap, fallback: '用户'),
      school: (userMap['school'] as String?) ?? '',
      grade: (userMap['grade'] as String?) ?? '',
      academy: (userMap['academy'] as String?) ?? (userMap['collegeName'] as String?) ?? '',
    );

    return AuthSession(
      token: data.token,
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
