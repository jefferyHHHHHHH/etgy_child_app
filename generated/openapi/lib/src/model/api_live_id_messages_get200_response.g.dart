// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_live_id_messages_get200_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ApiLiveIdMessagesGet200ResponseCWProxy {
  ApiLiveIdMessagesGet200Response code(int code);

  ApiLiveIdMessagesGet200Response message(String message);

  ApiLiveIdMessagesGet200Response data(List<LiveMessage> data);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiLiveIdMessagesGet200Response(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiLiveIdMessagesGet200Response(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiLiveIdMessagesGet200Response call({
    int code,
    String message,
    List<LiveMessage> data,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfApiLiveIdMessagesGet200Response.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfApiLiveIdMessagesGet200Response.copyWith.fieldName(...)`
class _$ApiLiveIdMessagesGet200ResponseCWProxyImpl
    implements _$ApiLiveIdMessagesGet200ResponseCWProxy {
  const _$ApiLiveIdMessagesGet200ResponseCWProxyImpl(this._value);

  final ApiLiveIdMessagesGet200Response _value;

  @override
  ApiLiveIdMessagesGet200Response code(int code) => this(code: code);

  @override
  ApiLiveIdMessagesGet200Response message(String message) =>
      this(message: message);

  @override
  ApiLiveIdMessagesGet200Response data(List<LiveMessage> data) =>
      this(data: data);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiLiveIdMessagesGet200Response(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiLiveIdMessagesGet200Response(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiLiveIdMessagesGet200Response call({
    Object? code = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? data = const $CopyWithPlaceholder(),
  }) {
    return ApiLiveIdMessagesGet200Response(
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
          : data as List<LiveMessage>,
    );
  }
}

extension $ApiLiveIdMessagesGet200ResponseCopyWith
    on ApiLiveIdMessagesGet200Response {
  /// Returns a callable class that can be used as follows: `instanceOfApiLiveIdMessagesGet200Response.copyWith(...)` or like so:`instanceOfApiLiveIdMessagesGet200Response.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ApiLiveIdMessagesGet200ResponseCWProxy get copyWith =>
      _$ApiLiveIdMessagesGet200ResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiLiveIdMessagesGet200Response _$ApiLiveIdMessagesGet200ResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ApiLiveIdMessagesGet200Response', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['code', 'message', 'data']);
  final val = ApiLiveIdMessagesGet200Response(
    code: $checkedConvert('code', (v) => (v as num).toInt()),
    message: $checkedConvert('message', (v) => v as String),
    data: $checkedConvert(
      'data',
      (v) => (v as List<dynamic>)
          .map((e) => LiveMessage.fromJson(e as Map<String, dynamic>))
          .toList(),
    ),
  );
  return val;
});

Map<String, dynamic> _$ApiLiveIdMessagesGet200ResponseToJson(
  ApiLiveIdMessagesGet200Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data.map((e) => e.toJson()).toList(),
};
