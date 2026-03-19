// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_auth_wechat_mini_program_login_post200_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ApiAuthWechatMiniProgramLoginPost200ResponseCWProxy {
  ApiAuthWechatMiniProgramLoginPost200Response code(int code);

  ApiAuthWechatMiniProgramLoginPost200Response message(String message);

  ApiAuthWechatMiniProgramLoginPost200Response data(
    ApiAuthWechatMiniProgramLoginPost200ResponseAllOfData data,
  );

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiAuthWechatMiniProgramLoginPost200Response(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiAuthWechatMiniProgramLoginPost200Response(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiAuthWechatMiniProgramLoginPost200Response call({
    int code,
    String message,
    ApiAuthWechatMiniProgramLoginPost200ResponseAllOfData data,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfApiAuthWechatMiniProgramLoginPost200Response.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfApiAuthWechatMiniProgramLoginPost200Response.copyWith.fieldName(...)`
class _$ApiAuthWechatMiniProgramLoginPost200ResponseCWProxyImpl
    implements _$ApiAuthWechatMiniProgramLoginPost200ResponseCWProxy {
  const _$ApiAuthWechatMiniProgramLoginPost200ResponseCWProxyImpl(this._value);

  final ApiAuthWechatMiniProgramLoginPost200Response _value;

  @override
  ApiAuthWechatMiniProgramLoginPost200Response code(int code) =>
      this(code: code);

  @override
  ApiAuthWechatMiniProgramLoginPost200Response message(String message) =>
      this(message: message);

  @override
  ApiAuthWechatMiniProgramLoginPost200Response data(
    ApiAuthWechatMiniProgramLoginPost200ResponseAllOfData data,
  ) => this(data: data);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiAuthWechatMiniProgramLoginPost200Response(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiAuthWechatMiniProgramLoginPost200Response(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiAuthWechatMiniProgramLoginPost200Response call({
    Object? code = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? data = const $CopyWithPlaceholder(),
  }) {
    return ApiAuthWechatMiniProgramLoginPost200Response(
      code: code == const $CopyWithPlaceholder()
          ? _value.code
          // ignore: cast_nullable_to_non_nullable
          : code as int,
      message: message == const $CopyWithPlaceholder()
          ? _value.message
          // ignore: cast_nullable_to_non_nullable
          : message as String,
      data: data == const $CopyWithPlaceholder()
          ? _value.data
          // ignore: cast_nullable_to_non_nullable
          : data as ApiAuthWechatMiniProgramLoginPost200ResponseAllOfData,
    );
  }
}

extension $ApiAuthWechatMiniProgramLoginPost200ResponseCopyWith
    on ApiAuthWechatMiniProgramLoginPost200Response {
  /// Returns a callable class that can be used as follows: `instanceOfApiAuthWechatMiniProgramLoginPost200Response.copyWith(...)` or like so:`instanceOfApiAuthWechatMiniProgramLoginPost200Response.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ApiAuthWechatMiniProgramLoginPost200ResponseCWProxy get copyWith =>
      _$ApiAuthWechatMiniProgramLoginPost200ResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiAuthWechatMiniProgramLoginPost200Response
_$ApiAuthWechatMiniProgramLoginPost200ResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ApiAuthWechatMiniProgramLoginPost200Response', json, (
  $checkedConvert,
) {
  $checkKeys(json, requiredKeys: const ['code', 'message', 'data']);
  final val = ApiAuthWechatMiniProgramLoginPost200Response(
    code: $checkedConvert('code', (v) => (v as num).toInt()),
    message: $checkedConvert('message', (v) => v as String),
    data: $checkedConvert(
      'data',
      (v) => ApiAuthWechatMiniProgramLoginPost200ResponseAllOfData.fromJson(
        v as Map<String, dynamic>,
      ),
    ),
  );
  return val;
});

Map<String, dynamic> _$ApiAuthWechatMiniProgramLoginPost200ResponseToJson(
  ApiAuthWechatMiniProgramLoginPost200Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data.toJson(),
};
