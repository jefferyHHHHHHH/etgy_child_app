// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_ai_tutor_chat_post200_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ApiAiTutorChatPost200ResponseCWProxy {
  ApiAiTutorChatPost200Response code(int code);

  ApiAiTutorChatPost200Response message(String message);

  ApiAiTutorChatPost200Response data(
    ApiAiTutorChatPost200ResponseAllOfData data,
  );

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiAiTutorChatPost200Response(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiAiTutorChatPost200Response(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiAiTutorChatPost200Response call({
    int code,
    String message,
    ApiAiTutorChatPost200ResponseAllOfData data,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfApiAiTutorChatPost200Response.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfApiAiTutorChatPost200Response.copyWith.fieldName(...)`
class _$ApiAiTutorChatPost200ResponseCWProxyImpl
    implements _$ApiAiTutorChatPost200ResponseCWProxy {
  const _$ApiAiTutorChatPost200ResponseCWProxyImpl(this._value);

  final ApiAiTutorChatPost200Response _value;

  @override
  ApiAiTutorChatPost200Response code(int code) => this(code: code);

  @override
  ApiAiTutorChatPost200Response message(String message) =>
      this(message: message);

  @override
  ApiAiTutorChatPost200Response data(
    ApiAiTutorChatPost200ResponseAllOfData data,
  ) => this(data: data);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiAiTutorChatPost200Response(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiAiTutorChatPost200Response(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiAiTutorChatPost200Response call({
    Object? code = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? data = const $CopyWithPlaceholder(),
  }) {
    return ApiAiTutorChatPost200Response(
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
          : data as ApiAiTutorChatPost200ResponseAllOfData,
    );
  }
}

extension $ApiAiTutorChatPost200ResponseCopyWith
    on ApiAiTutorChatPost200Response {
  /// Returns a callable class that can be used as follows: `instanceOfApiAiTutorChatPost200Response.copyWith(...)` or like so:`instanceOfApiAiTutorChatPost200Response.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ApiAiTutorChatPost200ResponseCWProxy get copyWith =>
      _$ApiAiTutorChatPost200ResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiAiTutorChatPost200Response _$ApiAiTutorChatPost200ResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ApiAiTutorChatPost200Response', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['code', 'message', 'data']);
  final val = ApiAiTutorChatPost200Response(
    code: $checkedConvert('code', (v) => (v as num).toInt()),
    message: $checkedConvert('message', (v) => v as String),
    data: $checkedConvert(
      'data',
      (v) => ApiAiTutorChatPost200ResponseAllOfData.fromJson(
        v as Map<String, dynamic>,
      ),
    ),
  );
  return val;
});

Map<String, dynamic> _$ApiAiTutorChatPost200ResponseToJson(
  ApiAiTutorChatPost200Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data.toJson(),
};
