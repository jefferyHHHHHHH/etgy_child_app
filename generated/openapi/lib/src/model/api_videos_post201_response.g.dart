// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_videos_post201_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ApiVideosPost201ResponseCWProxy {
  ApiVideosPost201Response code(int code);

  ApiVideosPost201Response message(String message);

  ApiVideosPost201Response data(Video data);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiVideosPost201Response(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiVideosPost201Response(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiVideosPost201Response call({int code, String message, Video data});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfApiVideosPost201Response.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfApiVideosPost201Response.copyWith.fieldName(...)`
class _$ApiVideosPost201ResponseCWProxyImpl
    implements _$ApiVideosPost201ResponseCWProxy {
  const _$ApiVideosPost201ResponseCWProxyImpl(this._value);

  final ApiVideosPost201Response _value;

  @override
  ApiVideosPost201Response code(int code) => this(code: code);

  @override
  ApiVideosPost201Response message(String message) => this(message: message);

  @override
  ApiVideosPost201Response data(Video data) => this(data: data);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiVideosPost201Response(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiVideosPost201Response(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiVideosPost201Response call({
    Object? code = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? data = const $CopyWithPlaceholder(),
  }) {
    return ApiVideosPost201Response(
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
          : data as Video,
    );
  }
}

extension $ApiVideosPost201ResponseCopyWith on ApiVideosPost201Response {
  /// Returns a callable class that can be used as follows: `instanceOfApiVideosPost201Response.copyWith(...)` or like so:`instanceOfApiVideosPost201Response.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ApiVideosPost201ResponseCWProxy get copyWith =>
      _$ApiVideosPost201ResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiVideosPost201Response _$ApiVideosPost201ResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ApiVideosPost201Response', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['code', 'message', 'data']);
  final val = ApiVideosPost201Response(
    code: $checkedConvert('code', (v) => (v as num).toInt()),
    message: $checkedConvert('message', (v) => v as String),
    data: $checkedConvert(
      'data',
      (v) => Video.fromJson(v as Map<String, dynamic>),
    ),
  );
  return val;
});

Map<String, dynamic> _$ApiVideosPost201ResponseToJson(
  ApiVideosPost201Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data.toJson(),
};
