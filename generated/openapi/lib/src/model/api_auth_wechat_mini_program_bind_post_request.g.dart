// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_auth_wechat_mini_program_bind_post_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ApiAuthWechatMiniProgramBindPostRequestCWProxy {
  ApiAuthWechatMiniProgramBindPostRequest bindToken(String bindToken);

  ApiAuthWechatMiniProgramBindPostRequest username(String username);

  ApiAuthWechatMiniProgramBindPostRequest password(String password);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiAuthWechatMiniProgramBindPostRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiAuthWechatMiniProgramBindPostRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiAuthWechatMiniProgramBindPostRequest call({
    String bindToken,
    String username,
    String password,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfApiAuthWechatMiniProgramBindPostRequest.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfApiAuthWechatMiniProgramBindPostRequest.copyWith.fieldName(...)`
class _$ApiAuthWechatMiniProgramBindPostRequestCWProxyImpl
    implements _$ApiAuthWechatMiniProgramBindPostRequestCWProxy {
  const _$ApiAuthWechatMiniProgramBindPostRequestCWProxyImpl(this._value);

  final ApiAuthWechatMiniProgramBindPostRequest _value;

  @override
  ApiAuthWechatMiniProgramBindPostRequest bindToken(String bindToken) =>
      this(bindToken: bindToken);

  @override
  ApiAuthWechatMiniProgramBindPostRequest username(String username) =>
      this(username: username);

  @override
  ApiAuthWechatMiniProgramBindPostRequest password(String password) =>
      this(password: password);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiAuthWechatMiniProgramBindPostRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiAuthWechatMiniProgramBindPostRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiAuthWechatMiniProgramBindPostRequest call({
    Object? bindToken = const $CopyWithPlaceholder(),
    Object? username = const $CopyWithPlaceholder(),
    Object? password = const $CopyWithPlaceholder(),
  }) {
    return ApiAuthWechatMiniProgramBindPostRequest(
      bindToken: bindToken == const $CopyWithPlaceholder()
          ? _value.bindToken
          // ignore: cast_nullable_to_non_nullable
          : bindToken as String,
      username: username == const $CopyWithPlaceholder()
          ? _value.username
          // ignore: cast_nullable_to_non_nullable
          : username as String,
      password: password == const $CopyWithPlaceholder()
          ? _value.password
          // ignore: cast_nullable_to_non_nullable
          : password as String,
    );
  }
}

extension $ApiAuthWechatMiniProgramBindPostRequestCopyWith
    on ApiAuthWechatMiniProgramBindPostRequest {
  /// Returns a callable class that can be used as follows: `instanceOfApiAuthWechatMiniProgramBindPostRequest.copyWith(...)` or like so:`instanceOfApiAuthWechatMiniProgramBindPostRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ApiAuthWechatMiniProgramBindPostRequestCWProxy get copyWith =>
      _$ApiAuthWechatMiniProgramBindPostRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiAuthWechatMiniProgramBindPostRequest
_$ApiAuthWechatMiniProgramBindPostRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate('ApiAuthWechatMiniProgramBindPostRequest', json, (
      $checkedConvert,
    ) {
      $checkKeys(
        json,
        requiredKeys: const ['bindToken', 'username', 'password'],
      );
      final val = ApiAuthWechatMiniProgramBindPostRequest(
        bindToken: $checkedConvert('bindToken', (v) => v as String),
        username: $checkedConvert('username', (v) => v as String),
        password: $checkedConvert('password', (v) => v as String),
      );
      return val;
    });

Map<String, dynamic> _$ApiAuthWechatMiniProgramBindPostRequestToJson(
  ApiAuthWechatMiniProgramBindPostRequest instance,
) => <String, dynamic>{
  'bindToken': instance.bindToken,
  'username': instance.username,
  'password': instance.password,
};
