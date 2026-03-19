// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_live_post201_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ApiLivePost201ResponseCWProxy {
  ApiLivePost201Response code(int code);

  ApiLivePost201Response message(String message);

  ApiLivePost201Response data(LiveRoom data);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiLivePost201Response(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiLivePost201Response(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiLivePost201Response call({int code, String message, LiveRoom data});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfApiLivePost201Response.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfApiLivePost201Response.copyWith.fieldName(...)`
class _$ApiLivePost201ResponseCWProxyImpl
    implements _$ApiLivePost201ResponseCWProxy {
  const _$ApiLivePost201ResponseCWProxyImpl(this._value);

  final ApiLivePost201Response _value;

  @override
  ApiLivePost201Response code(int code) => this(code: code);

  @override
  ApiLivePost201Response message(String message) => this(message: message);

  @override
  ApiLivePost201Response data(LiveRoom data) => this(data: data);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiLivePost201Response(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiLivePost201Response(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiLivePost201Response call({
    Object? code = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? data = const $CopyWithPlaceholder(),
  }) {
    return ApiLivePost201Response(
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
          : data as LiveRoom,
    );
  }
}

extension $ApiLivePost201ResponseCopyWith on ApiLivePost201Response {
  /// Returns a callable class that can be used as follows: `instanceOfApiLivePost201Response.copyWith(...)` or like so:`instanceOfApiLivePost201Response.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ApiLivePost201ResponseCWProxy get copyWith =>
      _$ApiLivePost201ResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiLivePost201Response _$ApiLivePost201ResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ApiLivePost201Response', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['code', 'message', 'data']);
  final val = ApiLivePost201Response(
    code: $checkedConvert('code', (v) => (v as num).toInt()),
    message: $checkedConvert('message', (v) => v as String),
    data: $checkedConvert(
      'data',
      (v) => LiveRoom.fromJson(v as Map<String, dynamic>),
    ),
  );
  return val;
});

Map<String, dynamic> _$ApiLivePost201ResponseToJson(
  ApiLivePost201Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data.toJson(),
};
