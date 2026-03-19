// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_ai_tutor_conversations_get200_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ApiAiTutorConversationsGet200ResponseCWProxy {
  ApiAiTutorConversationsGet200Response code(int code);

  ApiAiTutorConversationsGet200Response message(String message);

  ApiAiTutorConversationsGet200Response data(
    ApiAiTutorConversationsGet200ResponseAllOfData data,
  );

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiAiTutorConversationsGet200Response(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiAiTutorConversationsGet200Response(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiAiTutorConversationsGet200Response call({
    int code,
    String message,
    ApiAiTutorConversationsGet200ResponseAllOfData data,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfApiAiTutorConversationsGet200Response.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfApiAiTutorConversationsGet200Response.copyWith.fieldName(...)`
class _$ApiAiTutorConversationsGet200ResponseCWProxyImpl
    implements _$ApiAiTutorConversationsGet200ResponseCWProxy {
  const _$ApiAiTutorConversationsGet200ResponseCWProxyImpl(this._value);

  final ApiAiTutorConversationsGet200Response _value;

  @override
  ApiAiTutorConversationsGet200Response code(int code) => this(code: code);

  @override
  ApiAiTutorConversationsGet200Response message(String message) =>
      this(message: message);

  @override
  ApiAiTutorConversationsGet200Response data(
    ApiAiTutorConversationsGet200ResponseAllOfData data,
  ) => this(data: data);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiAiTutorConversationsGet200Response(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiAiTutorConversationsGet200Response(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiAiTutorConversationsGet200Response call({
    Object? code = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? data = const $CopyWithPlaceholder(),
  }) {
    return ApiAiTutorConversationsGet200Response(
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
          : data as ApiAiTutorConversationsGet200ResponseAllOfData,
    );
  }
}

extension $ApiAiTutorConversationsGet200ResponseCopyWith
    on ApiAiTutorConversationsGet200Response {
  /// Returns a callable class that can be used as follows: `instanceOfApiAiTutorConversationsGet200Response.copyWith(...)` or like so:`instanceOfApiAiTutorConversationsGet200Response.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ApiAiTutorConversationsGet200ResponseCWProxy get copyWith =>
      _$ApiAiTutorConversationsGet200ResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiAiTutorConversationsGet200Response
_$ApiAiTutorConversationsGet200ResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate('ApiAiTutorConversationsGet200Response', json, (
      $checkedConvert,
    ) {
      $checkKeys(json, requiredKeys: const ['code', 'message', 'data']);
      final val = ApiAiTutorConversationsGet200Response(
        code: $checkedConvert('code', (v) => (v as num).toInt()),
        message: $checkedConvert('message', (v) => v as String),
        data: $checkedConvert(
          'data',
          (v) => ApiAiTutorConversationsGet200ResponseAllOfData.fromJson(
            v as Map<String, dynamic>,
          ),
        ),
      );
      return val;
    });

Map<String, dynamic> _$ApiAiTutorConversationsGet200ResponseToJson(
  ApiAiTutorConversationsGet200Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data.toJson(),
};
