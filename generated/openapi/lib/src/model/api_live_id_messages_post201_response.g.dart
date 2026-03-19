// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_live_id_messages_post201_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ApiLiveIdMessagesPost201ResponseCWProxy {
  ApiLiveIdMessagesPost201Response code(int code);

  ApiLiveIdMessagesPost201Response message(String message);

  ApiLiveIdMessagesPost201Response data(LiveMessage data);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiLiveIdMessagesPost201Response(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiLiveIdMessagesPost201Response(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiLiveIdMessagesPost201Response call({
    int code,
    String message,
    LiveMessage data,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfApiLiveIdMessagesPost201Response.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfApiLiveIdMessagesPost201Response.copyWith.fieldName(...)`
class _$ApiLiveIdMessagesPost201ResponseCWProxyImpl
    implements _$ApiLiveIdMessagesPost201ResponseCWProxy {
  const _$ApiLiveIdMessagesPost201ResponseCWProxyImpl(this._value);

  final ApiLiveIdMessagesPost201Response _value;

  @override
  ApiLiveIdMessagesPost201Response code(int code) => this(code: code);

  @override
  ApiLiveIdMessagesPost201Response message(String message) =>
      this(message: message);

  @override
  ApiLiveIdMessagesPost201Response data(LiveMessage data) => this(data: data);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiLiveIdMessagesPost201Response(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiLiveIdMessagesPost201Response(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiLiveIdMessagesPost201Response call({
    Object? code = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? data = const $CopyWithPlaceholder(),
  }) {
    return ApiLiveIdMessagesPost201Response(
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
          : data as LiveMessage,
    );
  }
}

extension $ApiLiveIdMessagesPost201ResponseCopyWith
    on ApiLiveIdMessagesPost201Response {
  /// Returns a callable class that can be used as follows: `instanceOfApiLiveIdMessagesPost201Response.copyWith(...)` or like so:`instanceOfApiLiveIdMessagesPost201Response.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ApiLiveIdMessagesPost201ResponseCWProxy get copyWith =>
      _$ApiLiveIdMessagesPost201ResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiLiveIdMessagesPost201Response _$ApiLiveIdMessagesPost201ResponseFromJson(
  Map<String, dynamic> json,
) =>
    $checkedCreate('ApiLiveIdMessagesPost201Response', json, ($checkedConvert) {
      $checkKeys(json, requiredKeys: const ['code', 'message', 'data']);
      final val = ApiLiveIdMessagesPost201Response(
        code: $checkedConvert('code', (v) => (v as num).toInt()),
        message: $checkedConvert('message', (v) => v as String),
        data: $checkedConvert(
          'data',
          (v) => LiveMessage.fromJson(v as Map<String, dynamic>),
        ),
      );
      return val;
    });

Map<String, dynamic> _$ApiLiveIdMessagesPost201ResponseToJson(
  ApiLiveIdMessagesPost201Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data.toJson(),
};
