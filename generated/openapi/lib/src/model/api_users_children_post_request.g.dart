// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_users_children_post_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ApiUsersChildrenPostRequestCWProxy {
  ApiUsersChildrenPostRequest username(String username);

  ApiUsersChildrenPostRequest password(String password);

  ApiUsersChildrenPostRequest realName(String realName);

  ApiUsersChildrenPostRequest school(String school);

  ApiUsersChildrenPostRequest grade(String grade);

  ApiUsersChildrenPostRequest gender(
    ApiUsersChildrenPostRequestGenderEnum gender,
  );

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiUsersChildrenPostRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiUsersChildrenPostRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiUsersChildrenPostRequest call({
    String username,
    String password,
    String realName,
    String school,
    String grade,
    ApiUsersChildrenPostRequestGenderEnum gender,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfApiUsersChildrenPostRequest.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfApiUsersChildrenPostRequest.copyWith.fieldName(...)`
class _$ApiUsersChildrenPostRequestCWProxyImpl
    implements _$ApiUsersChildrenPostRequestCWProxy {
  const _$ApiUsersChildrenPostRequestCWProxyImpl(this._value);

  final ApiUsersChildrenPostRequest _value;

  @override
  ApiUsersChildrenPostRequest username(String username) =>
      this(username: username);

  @override
  ApiUsersChildrenPostRequest password(String password) =>
      this(password: password);

  @override
  ApiUsersChildrenPostRequest realName(String realName) =>
      this(realName: realName);

  @override
  ApiUsersChildrenPostRequest school(String school) => this(school: school);

  @override
  ApiUsersChildrenPostRequest grade(String grade) => this(grade: grade);

  @override
  ApiUsersChildrenPostRequest gender(
    ApiUsersChildrenPostRequestGenderEnum gender,
  ) => this(gender: gender);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiUsersChildrenPostRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiUsersChildrenPostRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiUsersChildrenPostRequest call({
    Object? username = const $CopyWithPlaceholder(),
    Object? password = const $CopyWithPlaceholder(),
    Object? realName = const $CopyWithPlaceholder(),
    Object? school = const $CopyWithPlaceholder(),
    Object? grade = const $CopyWithPlaceholder(),
    Object? gender = const $CopyWithPlaceholder(),
  }) {
    return ApiUsersChildrenPostRequest(
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
      school: school == const $CopyWithPlaceholder()
          ? _value.school
          // ignore: cast_nullable_to_non_nullable
          : school as String,
      grade: grade == const $CopyWithPlaceholder()
          ? _value.grade
          // ignore: cast_nullable_to_non_nullable
          : grade as String,
      gender: gender == const $CopyWithPlaceholder()
          ? _value.gender
          // ignore: cast_nullable_to_non_nullable
          : gender as ApiUsersChildrenPostRequestGenderEnum,
    );
  }
}

extension $ApiUsersChildrenPostRequestCopyWith on ApiUsersChildrenPostRequest {
  /// Returns a callable class that can be used as follows: `instanceOfApiUsersChildrenPostRequest.copyWith(...)` or like so:`instanceOfApiUsersChildrenPostRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ApiUsersChildrenPostRequestCWProxy get copyWith =>
      _$ApiUsersChildrenPostRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiUsersChildrenPostRequest _$ApiUsersChildrenPostRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ApiUsersChildrenPostRequest', json, ($checkedConvert) {
  $checkKeys(
    json,
    requiredKeys: const [
      'username',
      'password',
      'realName',
      'school',
      'grade',
      'gender',
    ],
  );
  final val = ApiUsersChildrenPostRequest(
    username: $checkedConvert('username', (v) => v as String),
    password: $checkedConvert('password', (v) => v as String),
    realName: $checkedConvert('realName', (v) => v as String),
    school: $checkedConvert('school', (v) => v as String),
    grade: $checkedConvert('grade', (v) => v as String),
    gender: $checkedConvert(
      'gender',
      (v) => $enumDecode(_$ApiUsersChildrenPostRequestGenderEnumEnumMap, v),
    ),
  );
  return val;
});

Map<String, dynamic> _$ApiUsersChildrenPostRequestToJson(
  ApiUsersChildrenPostRequest instance,
) => <String, dynamic>{
  'username': instance.username,
  'password': instance.password,
  'realName': instance.realName,
  'school': instance.school,
  'grade': instance.grade,
  'gender': _$ApiUsersChildrenPostRequestGenderEnumEnumMap[instance.gender]!,
};

const _$ApiUsersChildrenPostRequestGenderEnumEnumMap = {
  ApiUsersChildrenPostRequestGenderEnum.MALE: 'MALE',
  ApiUsersChildrenPostRequestGenderEnum.FEMALE: 'FEMALE',
  ApiUsersChildrenPostRequestGenderEnum.UNKNOWN: 'UNKNOWN',
};
