// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_auth_login_post200_response_all_of_data_any_of1.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ApiAuthLoginPost200ResponseAllOfDataAnyOf1CWProxy {
  ApiAuthLoginPost200ResponseAllOfDataAnyOf1 bindRequired(bool bindRequired);

  ApiAuthLoginPost200ResponseAllOfDataAnyOf1 bindToken(String bindToken);

  ApiAuthLoginPost200ResponseAllOfDataAnyOf1 user(Object? user);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiAuthLoginPost200ResponseAllOfDataAnyOf1(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiAuthLoginPost200ResponseAllOfDataAnyOf1(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiAuthLoginPost200ResponseAllOfDataAnyOf1 call({
    bool bindRequired,
    String bindToken,
    Object? user,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfApiAuthLoginPost200ResponseAllOfDataAnyOf1.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfApiAuthLoginPost200ResponseAllOfDataAnyOf1.copyWith.fieldName(...)`
class _$ApiAuthLoginPost200ResponseAllOfDataAnyOf1CWProxyImpl
    implements _$ApiAuthLoginPost200ResponseAllOfDataAnyOf1CWProxy {
  const _$ApiAuthLoginPost200ResponseAllOfDataAnyOf1CWProxyImpl(this._value);

  final ApiAuthLoginPost200ResponseAllOfDataAnyOf1 _value;

  @override
  ApiAuthLoginPost200ResponseAllOfDataAnyOf1 bindRequired(bool bindRequired) =>
      this(bindRequired: bindRequired);

  @override
  ApiAuthLoginPost200ResponseAllOfDataAnyOf1 bindToken(String bindToken) =>
      this(bindToken: bindToken);

  @override
  ApiAuthLoginPost200ResponseAllOfDataAnyOf1 user(Object? user) =>
      this(user: user);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiAuthLoginPost200ResponseAllOfDataAnyOf1(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiAuthLoginPost200ResponseAllOfDataAnyOf1(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiAuthLoginPost200ResponseAllOfDataAnyOf1 call({
    Object? bindRequired = const $CopyWithPlaceholder(),
    Object? bindToken = const $CopyWithPlaceholder(),
    Object? user = const $CopyWithPlaceholder(),
  }) {
    return ApiAuthLoginPost200ResponseAllOfDataAnyOf1(
      bindRequired: bindRequired == const $CopyWithPlaceholder()
          ? _value.bindRequired
          // ignore: cast_nullable_to_non_nullable
          : bindRequired as bool,
      bindToken: bindToken == const $CopyWithPlaceholder()
          ? _value.bindToken
          // ignore: cast_nullable_to_non_nullable
          : bindToken as String,
      user: user == const $CopyWithPlaceholder()
          ? _value.user
          // ignore: cast_nullable_to_non_nullable
          : user as Object?,
    );
  }
}

extension $ApiAuthLoginPost200ResponseAllOfDataAnyOf1CopyWith
    on ApiAuthLoginPost200ResponseAllOfDataAnyOf1 {
  /// Returns a callable class that can be used as follows: `instanceOfApiAuthLoginPost200ResponseAllOfDataAnyOf1.copyWith(...)` or like so:`instanceOfApiAuthLoginPost200ResponseAllOfDataAnyOf1.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ApiAuthLoginPost200ResponseAllOfDataAnyOf1CWProxy get copyWith =>
      _$ApiAuthLoginPost200ResponseAllOfDataAnyOf1CWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiAuthLoginPost200ResponseAllOfDataAnyOf1
_$ApiAuthLoginPost200ResponseAllOfDataAnyOf1FromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ApiAuthLoginPost200ResponseAllOfDataAnyOf1', json, (
  $checkedConvert,
) {
  $checkKeys(json, requiredKeys: const ['bindRequired', 'bindToken']);
  final val = ApiAuthLoginPost200ResponseAllOfDataAnyOf1(
    bindRequired: $checkedConvert('bindRequired', (v) => v as bool),
    bindToken: $checkedConvert('bindToken', (v) => v as String),
    user: $checkedConvert('user', (v) => v),
  );
  return val;
});

Map<String, dynamic> _$ApiAuthLoginPost200ResponseAllOfDataAnyOf1ToJson(
  ApiAuthLoginPost200ResponseAllOfDataAnyOf1 instance,
) => <String, dynamic>{
  'bindRequired': instance.bindRequired,
  'bindToken': instance.bindToken,
  'user': ?instance.user,
};
