// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_live_get200_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ApiLiveGet200ResponseCWProxy {
  ApiLiveGet200Response code(int code);

  ApiLiveGet200Response message(String message);

  ApiLiveGet200Response data(LiveRoomPagedResult data);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiLiveGet200Response(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiLiveGet200Response(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiLiveGet200Response call({
    int code,
    String message,
    LiveRoomPagedResult data,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfApiLiveGet200Response.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfApiLiveGet200Response.copyWith.fieldName(...)`
class _$ApiLiveGet200ResponseCWProxyImpl
    implements _$ApiLiveGet200ResponseCWProxy {
  const _$ApiLiveGet200ResponseCWProxyImpl(this._value);

  final ApiLiveGet200Response _value;

  @override
  ApiLiveGet200Response code(int code) => this(code: code);

  @override
  ApiLiveGet200Response message(String message) => this(message: message);

  @override
  ApiLiveGet200Response data(LiveRoomPagedResult data) => this(data: data);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiLiveGet200Response(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiLiveGet200Response(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiLiveGet200Response call({
    Object? code = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? data = const $CopyWithPlaceholder(),
  }) {
    return ApiLiveGet200Response(
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
          : data as LiveRoomPagedResult,
    );
  }
}

extension $ApiLiveGet200ResponseCopyWith on ApiLiveGet200Response {
  /// Returns a callable class that can be used as follows: `instanceOfApiLiveGet200Response.copyWith(...)` or like so:`instanceOfApiLiveGet200Response.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ApiLiveGet200ResponseCWProxy get copyWith =>
      _$ApiLiveGet200ResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiLiveGet200Response _$ApiLiveGet200ResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ApiLiveGet200Response', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['code', 'message', 'data']);
  final val = ApiLiveGet200Response(
    code: $checkedConvert('code', (v) => (v as num).toInt()),
    message: $checkedConvert('message', (v) => v as String),
    data: $checkedConvert(
      'data',
      (v) => LiveRoomPagedResult.fromJson(v as Map<String, dynamic>),
    ),
  );
  return val;
});

Map<String, dynamic> _$ApiLiveGet200ResponseToJson(
  ApiLiveGet200Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data.toJson(),
};
