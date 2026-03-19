// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_platform_content_policy_get200_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ApiPlatformContentPolicyGet200ResponseCWProxy {
  ApiPlatformContentPolicyGet200Response code(int code);

  ApiPlatformContentPolicyGet200Response message(String message);

  ApiPlatformContentPolicyGet200Response data(
    ApiPlatformContentPolicyGet200ResponseAllOfData data,
  );

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiPlatformContentPolicyGet200Response(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiPlatformContentPolicyGet200Response(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiPlatformContentPolicyGet200Response call({
    int code,
    String message,
    ApiPlatformContentPolicyGet200ResponseAllOfData data,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfApiPlatformContentPolicyGet200Response.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfApiPlatformContentPolicyGet200Response.copyWith.fieldName(...)`
class _$ApiPlatformContentPolicyGet200ResponseCWProxyImpl
    implements _$ApiPlatformContentPolicyGet200ResponseCWProxy {
  const _$ApiPlatformContentPolicyGet200ResponseCWProxyImpl(this._value);

  final ApiPlatformContentPolicyGet200Response _value;

  @override
  ApiPlatformContentPolicyGet200Response code(int code) => this(code: code);

  @override
  ApiPlatformContentPolicyGet200Response message(String message) =>
      this(message: message);

  @override
  ApiPlatformContentPolicyGet200Response data(
    ApiPlatformContentPolicyGet200ResponseAllOfData data,
  ) => this(data: data);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiPlatformContentPolicyGet200Response(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiPlatformContentPolicyGet200Response(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiPlatformContentPolicyGet200Response call({
    Object? code = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? data = const $CopyWithPlaceholder(),
  }) {
    return ApiPlatformContentPolicyGet200Response(
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
          : data as ApiPlatformContentPolicyGet200ResponseAllOfData,
    );
  }
}

extension $ApiPlatformContentPolicyGet200ResponseCopyWith
    on ApiPlatformContentPolicyGet200Response {
  /// Returns a callable class that can be used as follows: `instanceOfApiPlatformContentPolicyGet200Response.copyWith(...)` or like so:`instanceOfApiPlatformContentPolicyGet200Response.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ApiPlatformContentPolicyGet200ResponseCWProxy get copyWith =>
      _$ApiPlatformContentPolicyGet200ResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiPlatformContentPolicyGet200Response
_$ApiPlatformContentPolicyGet200ResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate('ApiPlatformContentPolicyGet200Response', json, (
      $checkedConvert,
    ) {
      $checkKeys(json, requiredKeys: const ['code', 'message', 'data']);
      final val = ApiPlatformContentPolicyGet200Response(
        code: $checkedConvert('code', (v) => (v as num).toInt()),
        message: $checkedConvert('message', (v) => v as String),
        data: $checkedConvert(
          'data',
          (v) => ApiPlatformContentPolicyGet200ResponseAllOfData.fromJson(
            v as Map<String, dynamic>,
          ),
        ),
      );
      return val;
    });

Map<String, dynamic> _$ApiPlatformContentPolicyGet200ResponseToJson(
  ApiPlatformContentPolicyGet200Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data.toJson(),
};
