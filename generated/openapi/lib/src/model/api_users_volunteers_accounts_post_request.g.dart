// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_users_volunteers_accounts_post_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ApiUsersVolunteersAccountsPostRequestCWProxy {
  ApiUsersVolunteersAccountsPostRequest username(String username);

  ApiUsersVolunteersAccountsPostRequest password(String password);

  ApiUsersVolunteersAccountsPostRequest realName(String realName);

  ApiUsersVolunteersAccountsPostRequest studentId(String studentId);

  ApiUsersVolunteersAccountsPostRequest collegeId(int? collegeId);

  ApiUsersVolunteersAccountsPostRequest phone(String? phone);

  ApiUsersVolunteersAccountsPostRequest gender(
    ApiUsersVolunteersAccountsPostRequestGenderEnum? gender,
  );

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiUsersVolunteersAccountsPostRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiUsersVolunteersAccountsPostRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiUsersVolunteersAccountsPostRequest call({
    String username,
    String password,
    String realName,
    String studentId,
    int? collegeId,
    String? phone,
    ApiUsersVolunteersAccountsPostRequestGenderEnum? gender,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfApiUsersVolunteersAccountsPostRequest.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfApiUsersVolunteersAccountsPostRequest.copyWith.fieldName(...)`
class _$ApiUsersVolunteersAccountsPostRequestCWProxyImpl
    implements _$ApiUsersVolunteersAccountsPostRequestCWProxy {
  const _$ApiUsersVolunteersAccountsPostRequestCWProxyImpl(this._value);

  final ApiUsersVolunteersAccountsPostRequest _value;

  @override
  ApiUsersVolunteersAccountsPostRequest username(String username) =>
      this(username: username);

  @override
  ApiUsersVolunteersAccountsPostRequest password(String password) =>
      this(password: password);

  @override
  ApiUsersVolunteersAccountsPostRequest realName(String realName) =>
      this(realName: realName);

  @override
  ApiUsersVolunteersAccountsPostRequest studentId(String studentId) =>
      this(studentId: studentId);

  @override
  ApiUsersVolunteersAccountsPostRequest collegeId(int? collegeId) =>
      this(collegeId: collegeId);

  @override
  ApiUsersVolunteersAccountsPostRequest phone(String? phone) =>
      this(phone: phone);

  @override
  ApiUsersVolunteersAccountsPostRequest gender(
    ApiUsersVolunteersAccountsPostRequestGenderEnum? gender,
  ) => this(gender: gender);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiUsersVolunteersAccountsPostRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiUsersVolunteersAccountsPostRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiUsersVolunteersAccountsPostRequest call({
    Object? username = const $CopyWithPlaceholder(),
    Object? password = const $CopyWithPlaceholder(),
    Object? realName = const $CopyWithPlaceholder(),
    Object? studentId = const $CopyWithPlaceholder(),
    Object? collegeId = const $CopyWithPlaceholder(),
    Object? phone = const $CopyWithPlaceholder(),
    Object? gender = const $CopyWithPlaceholder(),
  }) {
    return ApiUsersVolunteersAccountsPostRequest(
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
      studentId: studentId == const $CopyWithPlaceholder()
          ? _value.studentId
          // ignore: cast_nullable_to_non_nullable
          : studentId as String,
      collegeId: collegeId == const $CopyWithPlaceholder()
          ? _value.collegeId
          // ignore: cast_nullable_to_non_nullable
          : collegeId as int?,
      phone: phone == const $CopyWithPlaceholder()
          ? _value.phone
          // ignore: cast_nullable_to_non_nullable
          : phone as String?,
      gender: gender == const $CopyWithPlaceholder()
          ? _value.gender
          // ignore: cast_nullable_to_non_nullable
          : gender as ApiUsersVolunteersAccountsPostRequestGenderEnum?,
    );
  }
}

extension $ApiUsersVolunteersAccountsPostRequestCopyWith
    on ApiUsersVolunteersAccountsPostRequest {
  /// Returns a callable class that can be used as follows: `instanceOfApiUsersVolunteersAccountsPostRequest.copyWith(...)` or like so:`instanceOfApiUsersVolunteersAccountsPostRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ApiUsersVolunteersAccountsPostRequestCWProxy get copyWith =>
      _$ApiUsersVolunteersAccountsPostRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiUsersVolunteersAccountsPostRequest
_$ApiUsersVolunteersAccountsPostRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate('ApiUsersVolunteersAccountsPostRequest', json, (
      $checkedConvert,
    ) {
      $checkKeys(
        json,
        requiredKeys: const ['username', 'password', 'realName', 'studentId'],
      );
      final val = ApiUsersVolunteersAccountsPostRequest(
        username: $checkedConvert('username', (v) => v as String),
        password: $checkedConvert('password', (v) => v as String),
        realName: $checkedConvert('realName', (v) => v as String),
        studentId: $checkedConvert('studentId', (v) => v as String),
        collegeId: $checkedConvert('collegeId', (v) => (v as num?)?.toInt()),
        phone: $checkedConvert('phone', (v) => v as String?),
        gender: $checkedConvert(
          'gender',
          (v) => $enumDecodeNullable(
            _$ApiUsersVolunteersAccountsPostRequestGenderEnumEnumMap,
            v,
          ),
        ),
      );
      return val;
    });

Map<String, dynamic> _$ApiUsersVolunteersAccountsPostRequestToJson(
  ApiUsersVolunteersAccountsPostRequest instance,
) => <String, dynamic>{
  'username': instance.username,
  'password': instance.password,
  'realName': instance.realName,
  'studentId': instance.studentId,
  'collegeId': ?instance.collegeId,
  'phone': ?instance.phone,
  'gender':
      ?_$ApiUsersVolunteersAccountsPostRequestGenderEnumEnumMap[instance
          .gender],
};

const _$ApiUsersVolunteersAccountsPostRequestGenderEnumEnumMap = {
  ApiUsersVolunteersAccountsPostRequestGenderEnum.MALE: 'MALE',
  ApiUsersVolunteersAccountsPostRequestGenderEnum.FEMALE: 'FEMALE',
  ApiUsersVolunteersAccountsPostRequestGenderEnum.UNKNOWN: 'UNKNOWN',
};
