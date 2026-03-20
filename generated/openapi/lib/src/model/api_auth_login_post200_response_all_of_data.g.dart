// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_auth_login_post200_response_all_of_data.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ApiAuthLoginPost200ResponseAllOfDataCWProxy {
  ApiAuthLoginPost200ResponseAllOfData token(String token);

  ApiAuthLoginPost200ResponseAllOfData user(Object? user);

  ApiAuthLoginPost200ResponseAllOfData bindRequired(bool bindRequired);

  ApiAuthLoginPost200ResponseAllOfData bindToken(String bindToken);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiAuthLoginPost200ResponseAllOfData(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiAuthLoginPost200ResponseAllOfData(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiAuthLoginPost200ResponseAllOfData call({
    String token,
    Object? user,
    bool bindRequired,
    String bindToken,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfApiAuthLoginPost200ResponseAllOfData.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfApiAuthLoginPost200ResponseAllOfData.copyWith.fieldName(...)`
class _$ApiAuthLoginPost200ResponseAllOfDataCWProxyImpl
    implements _$ApiAuthLoginPost200ResponseAllOfDataCWProxy {
  const _$ApiAuthLoginPost200ResponseAllOfDataCWProxyImpl(this._value);

  final ApiAuthLoginPost200ResponseAllOfData _value;

  @override
  ApiAuthLoginPost200ResponseAllOfData token(String token) =>
      this(token: token);

  @override
  ApiAuthLoginPost200ResponseAllOfData user(Object? user) => this(user: user);

  @override
  ApiAuthLoginPost200ResponseAllOfData bindRequired(bool bindRequired) =>
      this(bindRequired: bindRequired);

  @override
  ApiAuthLoginPost200ResponseAllOfData bindToken(String bindToken) =>
      this(bindToken: bindToken);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiAuthLoginPost200ResponseAllOfData(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiAuthLoginPost200ResponseAllOfData(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiAuthLoginPost200ResponseAllOfData call({
    Object? token = const $CopyWithPlaceholder(),
    Object? user = const $CopyWithPlaceholder(),
    Object? bindRequired = const $CopyWithPlaceholder(),
    Object? bindToken = const $CopyWithPlaceholder(),
  }) {
    return ApiAuthLoginPost200ResponseAllOfData(
      token: token == const $CopyWithPlaceholder()
          ? _value.token
          // ignore: cast_nullable_to_non_nullable
          : token as String,
      user: user == const $CopyWithPlaceholder()
          ? _value.user
          // ignore: cast_nullable_to_non_nullable
          : user as Object?,
      bindRequired: bindRequired == const $CopyWithPlaceholder()
          ? _value.bindRequired
          // ignore: cast_nullable_to_non_nullable
          : bindRequired as bool,
      bindToken: bindToken == const $CopyWithPlaceholder()
          ? _value.bindToken
          // ignore: cast_nullable_to_non_nullable
          : bindToken as String,
    );
  }
}

extension $ApiAuthLoginPost200ResponseAllOfDataCopyWith
    on ApiAuthLoginPost200ResponseAllOfData {
  /// Returns a callable class that can be used as follows: `instanceOfApiAuthLoginPost200ResponseAllOfData.copyWith(...)` or like so:`instanceOfApiAuthLoginPost200ResponseAllOfData.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ApiAuthLoginPost200ResponseAllOfDataCWProxy get copyWith =>
      _$ApiAuthLoginPost200ResponseAllOfDataCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiAuthLoginPost200ResponseAllOfData
_$ApiAuthLoginPost200ResponseAllOfDataFromJson(Map<String, dynamic> json) =>
    $checkedCreate('ApiAuthLoginPost200ResponseAllOfData', json, (
      $checkedConvert,
    ) {
      $checkKeys(
        json,
        requiredKeys: const ['token', 'bindRequired', 'bindToken'],
      );
      final val = ApiAuthLoginPost200ResponseAllOfData(
        token: $checkedConvert('token', (v) => v as String),
        user: $checkedConvert('user', (v) => v),
        bindRequired: $checkedConvert('bindRequired', (v) => v as bool),
        bindToken: $checkedConvert('bindToken', (v) => v as String),
      );
      return val;
    });

Map<String, dynamic> _$ApiAuthLoginPost200ResponseAllOfDataToJson(
  ApiAuthLoginPost200ResponseAllOfData instance,
) => <String, dynamic>{
  'token': instance.token,
  'user': ?instance.user,
  'bindRequired': instance.bindRequired,
  'bindToken': instance.bindToken,
};
