// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_auth_wechat_mini_program_login_post_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ApiAuthWechatMiniProgramLoginPostRequestCWProxy {
  ApiAuthWechatMiniProgramLoginPostRequest code(String code);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiAuthWechatMiniProgramLoginPostRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiAuthWechatMiniProgramLoginPostRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiAuthWechatMiniProgramLoginPostRequest call({String code});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfApiAuthWechatMiniProgramLoginPostRequest.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfApiAuthWechatMiniProgramLoginPostRequest.copyWith.fieldName(...)`
class _$ApiAuthWechatMiniProgramLoginPostRequestCWProxyImpl
    implements _$ApiAuthWechatMiniProgramLoginPostRequestCWProxy {
  const _$ApiAuthWechatMiniProgramLoginPostRequestCWProxyImpl(this._value);

  final ApiAuthWechatMiniProgramLoginPostRequest _value;

  @override
  ApiAuthWechatMiniProgramLoginPostRequest code(String code) =>
      this(code: code);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiAuthWechatMiniProgramLoginPostRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiAuthWechatMiniProgramLoginPostRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiAuthWechatMiniProgramLoginPostRequest call({
    Object? code = const $CopyWithPlaceholder(),
  }) {
    return ApiAuthWechatMiniProgramLoginPostRequest(
      code: code == const $CopyWithPlaceholder()
          ? _value.code
          // ignore: cast_nullable_to_non_nullable
          : code as String,
    );
  }
}

extension $ApiAuthWechatMiniProgramLoginPostRequestCopyWith
    on ApiAuthWechatMiniProgramLoginPostRequest {
  /// Returns a callable class that can be used as follows: `instanceOfApiAuthWechatMiniProgramLoginPostRequest.copyWith(...)` or like so:`instanceOfApiAuthWechatMiniProgramLoginPostRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ApiAuthWechatMiniProgramLoginPostRequestCWProxy get copyWith =>
      _$ApiAuthWechatMiniProgramLoginPostRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiAuthWechatMiniProgramLoginPostRequest
_$ApiAuthWechatMiniProgramLoginPostRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate('ApiAuthWechatMiniProgramLoginPostRequest', json, (
      $checkedConvert,
    ) {
      $checkKeys(json, requiredKeys: const ['code']);
      final val = ApiAuthWechatMiniProgramLoginPostRequest(
        code: $checkedConvert('code', (v) => v as String),
      );
      return val;
    });

Map<String, dynamic> _$ApiAuthWechatMiniProgramLoginPostRequestToJson(
  ApiAuthWechatMiniProgramLoginPostRequest instance,
) => <String, dynamic>{'code': instance.code};
