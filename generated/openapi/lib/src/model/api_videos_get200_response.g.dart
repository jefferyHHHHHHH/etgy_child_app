// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_videos_get200_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ApiVideosGet200ResponseCWProxy {
  ApiVideosGet200Response code(int code);

  ApiVideosGet200Response message(String message);

  ApiVideosGet200Response data(List<Video> data);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiVideosGet200Response(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiVideosGet200Response(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiVideosGet200Response call({int code, String message, List<Video> data});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfApiVideosGet200Response.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfApiVideosGet200Response.copyWith.fieldName(...)`
class _$ApiVideosGet200ResponseCWProxyImpl
    implements _$ApiVideosGet200ResponseCWProxy {
  const _$ApiVideosGet200ResponseCWProxyImpl(this._value);

  final ApiVideosGet200Response _value;

  @override
  ApiVideosGet200Response code(int code) => this(code: code);

  @override
  ApiVideosGet200Response message(String message) => this(message: message);

  @override
  ApiVideosGet200Response data(List<Video> data) => this(data: data);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiVideosGet200Response(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiVideosGet200Response(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiVideosGet200Response call({
    Object? code = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? data = const $CopyWithPlaceholder(),
  }) {
    return ApiVideosGet200Response(
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
          : data as List<Video>,
    );
  }
}

extension $ApiVideosGet200ResponseCopyWith on ApiVideosGet200Response {
  /// Returns a callable class that can be used as follows: `instanceOfApiVideosGet200Response.copyWith(...)` or like so:`instanceOfApiVideosGet200Response.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ApiVideosGet200ResponseCWProxy get copyWith =>
      _$ApiVideosGet200ResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiVideosGet200Response _$ApiVideosGet200ResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ApiVideosGet200Response', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['code', 'message', 'data']);
  final val = ApiVideosGet200Response(
    code: $checkedConvert('code', (v) => (v as num).toInt()),
    message: $checkedConvert('message', (v) => v as String),
    data: $checkedConvert(
      'data',
      (v) => (v as List<dynamic>)
          .map((e) => Video.fromJson(e as Map<String, dynamic>))
          .toList(),
    ),
  );
  return val;
});

Map<String, dynamic> _$ApiVideosGet200ResponseToJson(
  ApiVideosGet200Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data.map((e) => e.toJson()).toList(),
};
