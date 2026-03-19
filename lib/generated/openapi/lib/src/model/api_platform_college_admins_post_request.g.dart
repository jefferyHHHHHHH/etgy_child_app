// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_platform_college_admins_post_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ApiPlatformCollegeAdminsPostRequestCWProxy {
  ApiPlatformCollegeAdminsPostRequest username(String username);

  ApiPlatformCollegeAdminsPostRequest password(String password);

  ApiPlatformCollegeAdminsPostRequest realName(String realName);

  ApiPlatformCollegeAdminsPostRequest collegeId(int collegeId);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiPlatformCollegeAdminsPostRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiPlatformCollegeAdminsPostRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiPlatformCollegeAdminsPostRequest call({
    String username,
    String password,
    String realName,
    int collegeId,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfApiPlatformCollegeAdminsPostRequest.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfApiPlatformCollegeAdminsPostRequest.copyWith.fieldName(...)`
class _$ApiPlatformCollegeAdminsPostRequestCWProxyImpl
    implements _$ApiPlatformCollegeAdminsPostRequestCWProxy {
  const _$ApiPlatformCollegeAdminsPostRequestCWProxyImpl(this._value);

  final ApiPlatformCollegeAdminsPostRequest _value;

  @override
  ApiPlatformCollegeAdminsPostRequest username(String username) =>
      this(username: username);

  @override
  ApiPlatformCollegeAdminsPostRequest password(String password) =>
      this(password: password);

  @override
  ApiPlatformCollegeAdminsPostRequest realName(String realName) =>
      this(realName: realName);

  @override
  ApiPlatformCollegeAdminsPostRequest collegeId(int collegeId) =>
      this(collegeId: collegeId);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiPlatformCollegeAdminsPostRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiPlatformCollegeAdminsPostRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiPlatformCollegeAdminsPostRequest call({
    Object? username = const $CopyWithPlaceholder(),
    Object? password = const $CopyWithPlaceholder(),
    Object? realName = const $CopyWithPlaceholder(),
    Object? collegeId = const $CopyWithPlaceholder(),
  }) {
    return ApiPlatformCollegeAdminsPostRequest(
      username: username == const $CopyWithPlaceholder()
          ? _value.username
          // ignore: cast_nullable_to_non_nullable
          : username as String,
      password: password == const $CopyWithPlaceholder()
          ? _value.password
          // ignore: cast_nullable_to_non_nullable
          : password as String,
      realName: realName == const $CopyWithPlaceholder()
          ? _value.realName
          // ignore: cast_nullable_to_non_nullable
          : realName as String,
      collegeId: collegeId == const $CopyWithPlaceholder()
          ? _value.collegeId
          // ignore: cast_nullable_to_non_nullable
          : collegeId as int,
    );
  }
}

extension $ApiPlatformCollegeAdminsPostRequestCopyWith
    on ApiPlatformCollegeAdminsPostRequest {
  /// Returns a callable class that can be used as follows: `instanceOfApiPlatformCollegeAdminsPostRequest.copyWith(...)` or like so:`instanceOfApiPlatformCollegeAdminsPostRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ApiPlatformCollegeAdminsPostRequestCWProxy get copyWith =>
      _$ApiPlatformCollegeAdminsPostRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiPlatformCollegeAdminsPostRequest
_$ApiPlatformCollegeAdminsPostRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate('ApiPlatformCollegeAdminsPostRequest', json, (
      $checkedConvert,
    ) {
      $checkKeys(
        json,
        requiredKeys: const ['username', 'password', 'realName', 'collegeId'],
      );
      final val = ApiPlatformCollegeAdminsPostRequest(
        username: $checkedConvert('username', (v) => v as String),
        password: $checkedConvert('password', (v) => v as String),
        realName: $checkedConvert('realName', (v) => v as String),
        collegeId: $checkedConvert('collegeId', (v) => (v as num).toInt()),
      );
      return val;
    });

Map<String, dynamic> _$ApiPlatformCollegeAdminsPostRequestToJson(
  ApiPlatformCollegeAdminsPostRequest instance,
) => <String, dynamic>{
  'username': instance.username,
  'password': instance.password,
  'realName': instance.realName,
  'collegeId': instance.collegeId,
};
