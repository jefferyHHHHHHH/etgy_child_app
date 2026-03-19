// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_auth_register_post_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ApiAuthRegisterPostRequestCWProxy {
  ApiAuthRegisterPostRequest username(String username);

  ApiAuthRegisterPostRequest password(String password);

  ApiAuthRegisterPostRequest role(ApiAuthRegisterPostRequestRoleEnum role);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiAuthRegisterPostRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiAuthRegisterPostRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiAuthRegisterPostRequest call({
    String username,
    String password,
    ApiAuthRegisterPostRequestRoleEnum role,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfApiAuthRegisterPostRequest.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfApiAuthRegisterPostRequest.copyWith.fieldName(...)`
class _$ApiAuthRegisterPostRequestCWProxyImpl
    implements _$ApiAuthRegisterPostRequestCWProxy {
  const _$ApiAuthRegisterPostRequestCWProxyImpl(this._value);

  final ApiAuthRegisterPostRequest _value;

  @override
  ApiAuthRegisterPostRequest username(String username) =>
      this(username: username);

  @override
  ApiAuthRegisterPostRequest password(String password) =>
      this(password: password);

  @override
  ApiAuthRegisterPostRequest role(ApiAuthRegisterPostRequestRoleEnum role) =>
      this(role: role);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiAuthRegisterPostRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiAuthRegisterPostRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiAuthRegisterPostRequest call({
    Object? username = const $CopyWithPlaceholder(),
    Object? password = const $CopyWithPlaceholder(),
    Object? role = const $CopyWithPlaceholder(),
  }) {
    return ApiAuthRegisterPostRequest(
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
          : role as ApiAuthRegisterPostRequestRoleEnum,
    );
  }
}

extension $ApiAuthRegisterPostRequestCopyWith on ApiAuthRegisterPostRequest {
  /// Returns a callable class that can be used as follows: `instanceOfApiAuthRegisterPostRequest.copyWith(...)` or like so:`instanceOfApiAuthRegisterPostRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ApiAuthRegisterPostRequestCWProxy get copyWith =>
      _$ApiAuthRegisterPostRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiAuthRegisterPostRequest _$ApiAuthRegisterPostRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ApiAuthRegisterPostRequest', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['username', 'password', 'role']);
  final val = ApiAuthRegisterPostRequest(
    username: $checkedConvert('username', (v) => v as String),
    password: $checkedConvert('password', (v) => v as String),
    role: $checkedConvert(
      'role',
      (v) => $enumDecode(_$ApiAuthRegisterPostRequestRoleEnumEnumMap, v),
    ),
  );
  return val;
});

Map<String, dynamic> _$ApiAuthRegisterPostRequestToJson(
  ApiAuthRegisterPostRequest instance,
) => <String, dynamic>{
  'username': instance.username,
  'password': instance.password,
  'role': _$ApiAuthRegisterPostRequestRoleEnumEnumMap[instance.role]!,
};

const _$ApiAuthRegisterPostRequestRoleEnumEnumMap = {
  ApiAuthRegisterPostRequestRoleEnum.CHILD: 'CHILD',
  ApiAuthRegisterPostRequestRoleEnum.VOLUNTEER: 'VOLUNTEER',
  ApiAuthRegisterPostRequestRoleEnum.COLLEGE_ADMIN: 'COLLEGE_ADMIN',
  ApiAuthRegisterPostRequestRoleEnum.PLATFORM_ADMIN: 'PLATFORM_ADMIN',
};
