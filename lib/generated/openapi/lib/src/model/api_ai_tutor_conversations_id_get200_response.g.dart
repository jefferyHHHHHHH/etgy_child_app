// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_ai_tutor_conversations_id_get200_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ApiAiTutorConversationsIdGet200ResponseCWProxy {
  ApiAiTutorConversationsIdGet200Response code(int code);

  ApiAiTutorConversationsIdGet200Response message(String message);

  ApiAiTutorConversationsIdGet200Response data(
    ApiAiTutorConversationsIdGet200ResponseAllOfData data,
  );

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiAiTutorConversationsIdGet200Response(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiAiTutorConversationsIdGet200Response(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiAiTutorConversationsIdGet200Response call({
    int code,
    String message,
    ApiAiTutorConversationsIdGet200ResponseAllOfData data,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfApiAiTutorConversationsIdGet200Response.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfApiAiTutorConversationsIdGet200Response.copyWith.fieldName(...)`
class _$ApiAiTutorConversationsIdGet200ResponseCWProxyImpl
    implements _$ApiAiTutorConversationsIdGet200ResponseCWProxy {
  const _$ApiAiTutorConversationsIdGet200ResponseCWProxyImpl(this._value);

  final ApiAiTutorConversationsIdGet200Response _value;

  @override
  ApiAiTutorConversationsIdGet200Response code(int code) => this(code: code);

  @override
  ApiAiTutorConversationsIdGet200Response message(String message) =>
      this(message: message);

  @override
  ApiAiTutorConversationsIdGet200Response data(
    ApiAiTutorConversationsIdGet200ResponseAllOfData data,
  ) => this(data: data);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiAiTutorConversationsIdGet200Response(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiAiTutorConversationsIdGet200Response(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiAiTutorConversationsIdGet200Response call({
    Object? code = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? data = const $CopyWithPlaceholder(),
  }) {
    return ApiAiTutorConversationsIdGet200Response(
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
          : data as ApiAiTutorConversationsIdGet200ResponseAllOfData,
    );
  }
}

extension $ApiAiTutorConversationsIdGet200ResponseCopyWith
    on ApiAiTutorConversationsIdGet200Response {
  /// Returns a callable class that can be used as follows: `instanceOfApiAiTutorConversationsIdGet200Response.copyWith(...)` or like so:`instanceOfApiAiTutorConversationsIdGet200Response.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ApiAiTutorConversationsIdGet200ResponseCWProxy get copyWith =>
      _$ApiAiTutorConversationsIdGet200ResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiAiTutorConversationsIdGet200Response
_$ApiAiTutorConversationsIdGet200ResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate('ApiAiTutorConversationsIdGet200Response', json, (
      $checkedConvert,
    ) {
      $checkKeys(json, requiredKeys: const ['code', 'message', 'data']);
      final val = ApiAiTutorConversationsIdGet200Response(
        code: $checkedConvert('code', (v) => (v as num).toInt()),
        message: $checkedConvert('message', (v) => v as String),
        data: $checkedConvert(
          'data',
          (v) => ApiAiTutorConversationsIdGet200ResponseAllOfData.fromJson(
            v as Map<String, dynamic>,
          ),
        ),
      );
      return val;
    });

Map<String, dynamic> _$ApiAiTutorConversationsIdGet200ResponseToJson(
  ApiAiTutorConversationsIdGet200Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data.toJson(),
};
