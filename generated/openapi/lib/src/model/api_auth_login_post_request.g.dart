// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_auth_login_post_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ApiAuthLoginPostRequestCWProxy {
  ApiAuthLoginPostRequest username(String username);

  ApiAuthLoginPostRequest password(String password);

  ApiAuthLoginPostRequest role(ApiAuthLoginPostRequestRoleEnum? role);

  ApiAuthLoginPostRequest deviceId(String? deviceId);

  ApiAuthLoginPostRequest deviceInfo(
    ApiAuthLoginPostRequestDeviceInfo? deviceInfo,
  );

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiAuthLoginPostRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiAuthLoginPostRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiAuthLoginPostRequest call({
    String username,
    String password,
    ApiAuthLoginPostRequestRoleEnum? role,
    String? deviceId,
    ApiAuthLoginPostRequestDeviceInfo? deviceInfo,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfApiAuthLoginPostRequest.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfApiAuthLoginPostRequest.copyWith.fieldName(...)`
class _$ApiAuthLoginPostRequestCWProxyImpl
    implements _$ApiAuthLoginPostRequestCWProxy {
  const _$ApiAuthLoginPostRequestCWProxyImpl(this._value);

  final ApiAuthLoginPostRequest _value;

  @override
  ApiAuthLoginPostRequest username(String username) => this(username: username);

  @override
  ApiAuthLoginPostRequest password(String password) => this(password: password);

  @override
  ApiAuthLoginPostRequest role(ApiAuthLoginPostRequestRoleEnum? role) =>
      this(role: role);

  @override
  ApiAuthLoginPostRequest deviceId(String? deviceId) =>
      this(deviceId: deviceId);

  @override
  ApiAuthLoginPostRequest deviceInfo(
    ApiAuthLoginPostRequestDeviceInfo? deviceInfo,
  ) => this(deviceInfo: deviceInfo);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiAuthLoginPostRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiAuthLoginPostRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiAuthLoginPostRequest call({
    Object? username = const $CopyWithPlaceholder(),
    Object? password = const $CopyWithPlaceholder(),
    Object? role = const $CopyWithPlaceholder(),
    Object? deviceId = const $CopyWithPlaceholder(),
    Object? deviceInfo = const $CopyWithPlaceholder(),
  }) {
    return ApiAuthLoginPostRequest(
      username: username == const $CopyWithPlaceholder()
          ? _value.username
          // ignore: cast_nullable_to_non_nullable
          : username as String,
      password: password == const $CopyWithPlaceholder()
          ? _value.password
          // ignore: cast_nullable_to_non_nullable
          : password as String,
      role: role == const $CopyWithPlaceholder()
          ? _value.role
          // ignore: cast_nullable_to_non_nullable
          : role as ApiAuthLoginPostRequestRoleEnum?,
      deviceId: deviceId == const $CopyWithPlaceholder()
          ? _value.deviceId
          // ignore: cast_nullable_to_non_nullable
          : deviceId as String?,
      deviceInfo: deviceInfo == const $CopyWithPlaceholder()
          ? _value.deviceInfo
          // ignore: cast_nullable_to_non_nullable
          : deviceInfo as ApiAuthLoginPostRequestDeviceInfo?,
    );
  }
}

extension $ApiAuthLoginPostRequestCopyWith on ApiAuthLoginPostRequest {
  /// Returns a callable class that can be used as follows: `instanceOfApiAuthLoginPostRequest.copyWith(...)` or like so:`instanceOfApiAuthLoginPostRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ApiAuthLoginPostRequestCWProxy get copyWith =>
      _$ApiAuthLoginPostRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiAuthLoginPostRequest _$ApiAuthLoginPostRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ApiAuthLoginPostRequest', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['username', 'password']);
  final val = ApiAuthLoginPostRequest(
    username: $checkedConvert('username', (v) => v as String),
    password: $checkedConvert('password', (v) => v as String),
    role: $checkedConvert(
      'role',
      (v) => $enumDecodeNullable(_$ApiAuthLoginPostRequestRoleEnumEnumMap, v),
    ),
    deviceId: $checkedConvert('deviceId', (v) => v as String?),
    deviceInfo: $checkedConvert(
      'deviceInfo',
      (v) => v == null
          ? null
          : ApiAuthLoginPostRequestDeviceInfo.fromJson(
              v as Map<String, dynamic>,
            ),
    ),
  );
  return val;
});

Map<String, dynamic> _$ApiAuthLoginPostRequestToJson(
  ApiAuthLoginPostRequest instance,
) => <String, dynamic>{
  'username': instance.username,
  'password': instance.password,
  'role': ?_$ApiAuthLoginPostRequestRoleEnumEnumMap[instance.role],
  'deviceId': ?instance.deviceId,
  'deviceInfo': ?instance.deviceInfo?.toJson(),
};

const _$ApiAuthLoginPostRequestRoleEnumEnumMap = {
  ApiAuthLoginPostRequestRoleEnum.CHILD: 'CHILD',
  ApiAuthLoginPostRequestRoleEnum.VOLUNTEER: 'VOLUNTEER',
  ApiAuthLoginPostRequestRoleEnum.COLLEGE_ADMIN: 'COLLEGE_ADMIN',
  ApiAuthLoginPostRequestRoleEnum.PLATFORM_ADMIN: 'PLATFORM_ADMIN',
};
