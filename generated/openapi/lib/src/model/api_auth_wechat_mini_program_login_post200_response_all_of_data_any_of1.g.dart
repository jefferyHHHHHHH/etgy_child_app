// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_auth_wechat_mini_program_login_post200_response_all_of_data_any_of1.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ApiAuthWechatMiniProgramLoginPost200ResponseAllOfDataAnyOf1CWProxy {
  ApiAuthWechatMiniProgramLoginPost200ResponseAllOfDataAnyOf1 bindRequired(
    bool bindRequired,
  );

  ApiAuthWechatMiniProgramLoginPost200ResponseAllOfDataAnyOf1 token(
    String token,
  );

  ApiAuthWechatMiniProgramLoginPost200ResponseAllOfDataAnyOf1 user(
    Object? user,
  );

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiAuthWechatMiniProgramLoginPost200ResponseAllOfDataAnyOf1(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiAuthWechatMiniProgramLoginPost200ResponseAllOfDataAnyOf1(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiAuthWechatMiniProgramLoginPost200ResponseAllOfDataAnyOf1 call({
    bool bindRequired,
    String token,
    Object? user,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfApiAuthWechatMiniProgramLoginPost200ResponseAllOfDataAnyOf1.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfApiAuthWechatMiniProgramLoginPost200ResponseAllOfDataAnyOf1.copyWith.fieldName(...)`
class _$ApiAuthWechatMiniProgramLoginPost200ResponseAllOfDataAnyOf1CWProxyImpl
    implements
        _$ApiAuthWechatMiniProgramLoginPost200ResponseAllOfDataAnyOf1CWProxy {
  const _$ApiAuthWechatMiniProgramLoginPost200ResponseAllOfDataAnyOf1CWProxyImpl(
    this._value,
  );

  final ApiAuthWechatMiniProgramLoginPost200ResponseAllOfDataAnyOf1 _value;

  @override
  ApiAuthWechatMiniProgramLoginPost200ResponseAllOfDataAnyOf1 bindRequired(
    bool bindRequired,
  ) => this(bindRequired: bindRequired);

  @override
  ApiAuthWechatMiniProgramLoginPost200ResponseAllOfDataAnyOf1 token(
    String token,
  ) => this(token: token);

  @override
  ApiAuthWechatMiniProgramLoginPost200ResponseAllOfDataAnyOf1 user(
    Object? user,
  ) => this(user: user);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiAuthWechatMiniProgramLoginPost200ResponseAllOfDataAnyOf1(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiAuthWechatMiniProgramLoginPost200ResponseAllOfDataAnyOf1(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiAuthWechatMiniProgramLoginPost200ResponseAllOfDataAnyOf1 call({
    Object? bindRequired = const $CopyWithPlaceholder(),
    Object? token = const $CopyWithPlaceholder(),
    Object? user = const $CopyWithPlaceholder(),
  }) {
    return ApiAuthWechatMiniProgramLoginPost200ResponseAllOfDataAnyOf1(
      bindRequired: bindRequired == const $CopyWithPlaceholder()
          ? _value.bindRequired
          // ignore: cast_nullable_to_non_nullable
          : bindRequired as bool,
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

extension $ApiAuthWechatMiniProgramLoginPost200ResponseAllOfDataAnyOf1CopyWith
    on ApiAuthWechatMiniProgramLoginPost200ResponseAllOfDataAnyOf1 {
  /// Returns a callable class that can be used as follows: `instanceOfApiAuthWechatMiniProgramLoginPost200ResponseAllOfDataAnyOf1.copyWith(...)` or like so:`instanceOfApiAuthWechatMiniProgramLoginPost200ResponseAllOfDataAnyOf1.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ApiAuthWechatMiniProgramLoginPost200ResponseAllOfDataAnyOf1CWProxy
  get copyWith =>
      _$ApiAuthWechatMiniProgramLoginPost200ResponseAllOfDataAnyOf1CWProxyImpl(
        this,
      );
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiAuthWechatMiniProgramLoginPost200ResponseAllOfDataAnyOf1
_$ApiAuthWechatMiniProgramLoginPost200ResponseAllOfDataAnyOf1FromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'ApiAuthWechatMiniProgramLoginPost200ResponseAllOfDataAnyOf1',
  json,
  ($checkedConvert) {
    $checkKeys(json, requiredKeys: const ['bindRequired', 'token']);
    final val = ApiAuthWechatMiniProgramLoginPost200ResponseAllOfDataAnyOf1(
      bindRequired: $checkedConvert('bindRequired', (v) => v as bool),
      token: $checkedConvert('token', (v) => v as String),
      user: $checkedConvert('user', (v) => v),
    );
    return val;
  },
);

Map<String, dynamic>
_$ApiAuthWechatMiniProgramLoginPost200ResponseAllOfDataAnyOf1ToJson(
  ApiAuthWechatMiniProgramLoginPost200ResponseAllOfDataAnyOf1 instance,
) => <String, dynamic>{
  'bindRequired': instance.bindRequired,
  'token': instance.token,
  'user': ?instance.user,
};
