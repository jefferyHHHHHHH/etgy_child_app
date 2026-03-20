// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_auth_login_post200_response_all_of_data_any_of.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ApiAuthLoginPost200ResponseAllOfDataAnyOfCWProxy {
  ApiAuthLoginPost200ResponseAllOfDataAnyOf token(String token);

  ApiAuthLoginPost200ResponseAllOfDataAnyOf user(Object? user);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiAuthLoginPost200ResponseAllOfDataAnyOf(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiAuthLoginPost200ResponseAllOfDataAnyOf(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiAuthLoginPost200ResponseAllOfDataAnyOf call({String token, Object? user});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfApiAuthLoginPost200ResponseAllOfDataAnyOf.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfApiAuthLoginPost200ResponseAllOfDataAnyOf.copyWith.fieldName(...)`
class _$ApiAuthLoginPost200ResponseAllOfDataAnyOfCWProxyImpl
    implements _$ApiAuthLoginPost200ResponseAllOfDataAnyOfCWProxy {
  const _$ApiAuthLoginPost200ResponseAllOfDataAnyOfCWProxyImpl(this._value);

  final ApiAuthLoginPost200ResponseAllOfDataAnyOf _value;

  @override
  ApiAuthLoginPost200ResponseAllOfDataAnyOf token(String token) =>
      this(token: token);

  @override
  ApiAuthLoginPost200ResponseAllOfDataAnyOf user(Object? user) =>
      this(user: user);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiAuthLoginPost200ResponseAllOfDataAnyOf(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiAuthLoginPost200ResponseAllOfDataAnyOf(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiAuthLoginPost200ResponseAllOfDataAnyOf call({
    Object? token = const $CopyWithPlaceholder(),
    Object? user = const $CopyWithPlaceholder(),
  }) {
    return ApiAuthLoginPost200ResponseAllOfDataAnyOf(
      token: token == const $CopyWithPlaceholder()
          ? _value.token
          // ignore: cast_nullable_to_non_nullable
          : token as String,
      user: user == const $CopyWithPlaceholder()
          ? _value.user
          // ignore: cast_nullable_to_non_nullable
          : user as Object?,
    );
  }
}

extension $ApiAuthLoginPost200ResponseAllOfDataAnyOfCopyWith
    on ApiAuthLoginPost200ResponseAllOfDataAnyOf {
  /// Returns a callable class that can be used as follows: `instanceOfApiAuthLoginPost200ResponseAllOfDataAnyOf.copyWith(...)` or like so:`instanceOfApiAuthLoginPost200ResponseAllOfDataAnyOf.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ApiAuthLoginPost200ResponseAllOfDataAnyOfCWProxy get copyWith =>
      _$ApiAuthLoginPost200ResponseAllOfDataAnyOfCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiAuthLoginPost200ResponseAllOfDataAnyOf
_$ApiAuthLoginPost200ResponseAllOfDataAnyOfFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ApiAuthLoginPost200ResponseAllOfDataAnyOf', json, (
  $checkedConvert,
) {
  $checkKeys(json, requiredKeys: const ['token']);
  final val = ApiAuthLoginPost200ResponseAllOfDataAnyOf(
    token: $checkedConvert('token', (v) => v as String),
    user: $checkedConvert('user', (v) => v),
  );
  return val;
});

Map<String, dynamic> _$ApiAuthLoginPost200ResponseAllOfDataAnyOfToJson(
  ApiAuthLoginPost200ResponseAllOfDataAnyOf instance,
) => <String, dynamic>{'token': instance.token, 'user': ?instance.user};
