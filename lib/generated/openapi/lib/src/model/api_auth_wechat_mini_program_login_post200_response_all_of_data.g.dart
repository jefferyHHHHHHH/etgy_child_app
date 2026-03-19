// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_auth_wechat_mini_program_login_post200_response_all_of_data.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ApiAuthWechatMiniProgramLoginPost200ResponseAllOfDataCWProxy {
  ApiAuthWechatMiniProgramLoginPost200ResponseAllOfData bindRequired(
    bool bindRequired,
  );

  ApiAuthWechatMiniProgramLoginPost200ResponseAllOfData bindToken(
    String bindToken,
  );

  ApiAuthWechatMiniProgramLoginPost200ResponseAllOfData token(String token);

  ApiAuthWechatMiniProgramLoginPost200ResponseAllOfData user(Object? user);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiAuthWechatMiniProgramLoginPost200ResponseAllOfData(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiAuthWechatMiniProgramLoginPost200ResponseAllOfData(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiAuthWechatMiniProgramLoginPost200ResponseAllOfData call({
    bool bindRequired,
    String bindToken,
    String token,
    Object? user,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfApiAuthWechatMiniProgramLoginPost200ResponseAllOfData.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfApiAuthWechatMiniProgramLoginPost200ResponseAllOfData.copyWith.fieldName(...)`
class _$ApiAuthWechatMiniProgramLoginPost200ResponseAllOfDataCWProxyImpl
    implements _$ApiAuthWechatMiniProgramLoginPost200ResponseAllOfDataCWProxy {
  const _$ApiAuthWechatMiniProgramLoginPost200ResponseAllOfDataCWProxyImpl(
    this._value,
  );

  final ApiAuthWechatMiniProgramLoginPost200ResponseAllOfData _value;

  @override
  ApiAuthWechatMiniProgramLoginPost200ResponseAllOfData bindRequired(
    bool bindRequired,
  ) => this(bindRequired: bindRequired);

  @override
  ApiAuthWechatMiniProgramLoginPost200ResponseAllOfData bindToken(
    String bindToken,
  ) => this(bindToken: bindToken);

  @override
  ApiAuthWechatMiniProgramLoginPost200ResponseAllOfData token(String token) =>
      this(token: token);

  @override
  ApiAuthWechatMiniProgramLoginPost200ResponseAllOfData user(Object? user) =>
      this(user: user);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiAuthWechatMiniProgramLoginPost200ResponseAllOfData(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiAuthWechatMiniProgramLoginPost200ResponseAllOfData(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiAuthWechatMiniProgramLoginPost200ResponseAllOfData call({
    Object? bindRequired = const $CopyWithPlaceholder(),
    Object? bindToken = const $CopyWithPlaceholder(),
    Object? token = const $CopyWithPlaceholder(),
    Object? user = const $CopyWithPlaceholder(),
  }) {
    return ApiAuthWechatMiniProgramLoginPost200ResponseAllOfData(
      bindRequired: bindRequired == const $CopyWithPlaceholder()
          ? _value.bindRequired
          // ignore: cast_nullable_to_non_nullable
          : bindRequired as bool,
      bindToken: bindToken == const $CopyWithPlaceholder()
          ? _value.bindToken
          // ignore: cast_nullable_to_non_nullable
          : bindToken as String,
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

extension $ApiAuthWechatMiniProgramLoginPost200ResponseAllOfDataCopyWith
    on ApiAuthWechatMiniProgramLoginPost200ResponseAllOfData {
  /// Returns a callable class that can be used as follows: `instanceOfApiAuthWechatMiniProgramLoginPost200ResponseAllOfData.copyWith(...)` or like so:`instanceOfApiAuthWechatMiniProgramLoginPost200ResponseAllOfData.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ApiAuthWechatMiniProgramLoginPost200ResponseAllOfDataCWProxy get copyWith =>
      _$ApiAuthWechatMiniProgramLoginPost200ResponseAllOfDataCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiAuthWechatMiniProgramLoginPost200ResponseAllOfData
_$ApiAuthWechatMiniProgramLoginPost200ResponseAllOfDataFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'ApiAuthWechatMiniProgramLoginPost200ResponseAllOfData',
  json,
  ($checkedConvert) {
    $checkKeys(
      json,
      requiredKeys: const ['bindRequired', 'bindToken', 'token'],
    );
    final val = ApiAuthWechatMiniProgramLoginPost200ResponseAllOfData(
      bindRequired: $checkedConvert('bindRequired', (v) => v as bool),
      bindToken: $checkedConvert('bindToken', (v) => v as String),
      token: $checkedConvert('token', (v) => v as String),
      user: $checkedConvert('user', (v) => v),
    );
    return val;
  },
);

Map<String, dynamic>
_$ApiAuthWechatMiniProgramLoginPost200ResponseAllOfDataToJson(
  ApiAuthWechatMiniProgramLoginPost200ResponseAllOfData instance,
) => <String, dynamic>{
  'bindRequired': instance.bindRequired,
  'bindToken': instance.bindToken,
  'token': instance.token,
  'user': ?instance.user,
};
