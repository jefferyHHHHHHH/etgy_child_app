// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_ai_tutor_chat_post_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ApiAiTutorChatPostRequestCWProxy {
  ApiAiTutorChatPostRequest mode(ApiAiTutorChatPostRequestModeEnum? mode);

  ApiAiTutorChatPostRequest message(String message);

  ApiAiTutorChatPostRequest conversationId(int? conversationId);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiAiTutorChatPostRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiAiTutorChatPostRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiAiTutorChatPostRequest call({
    ApiAiTutorChatPostRequestModeEnum? mode,
    String message,
    int? conversationId,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfApiAiTutorChatPostRequest.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfApiAiTutorChatPostRequest.copyWith.fieldName(...)`
class _$ApiAiTutorChatPostRequestCWProxyImpl
    implements _$ApiAiTutorChatPostRequestCWProxy {
  const _$ApiAiTutorChatPostRequestCWProxyImpl(this._value);

  final ApiAiTutorChatPostRequest _value;

  @override
  ApiAiTutorChatPostRequest mode(ApiAiTutorChatPostRequestModeEnum? mode) =>
      this(mode: mode);

  @override
  ApiAiTutorChatPostRequest message(String message) => this(message: message);

  @override
  ApiAiTutorChatPostRequest conversationId(int? conversationId) =>
      this(conversationId: conversationId);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiAiTutorChatPostRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiAiTutorChatPostRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiAiTutorChatPostRequest call({
    Object? mode = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? conversationId = const $CopyWithPlaceholder(),
  }) {
    return ApiAiTutorChatPostRequest(
      mode: mode == const $CopyWithPlaceholder()
          ? _value.mode
          // ignore: cast_nullable_to_non_nullable
          : mode as ApiAiTutorChatPostRequestModeEnum?,
      message: message == const $CopyWithPlaceholder()
          ? _value.message
          // ignore: cast_nullable_to_non_nullable
          : message as String,
      conversationId: conversationId == const $CopyWithPlaceholder()
          ? _value.conversationId
          // ignore: cast_nullable_to_non_nullable
          : conversationId as int?,
    );
  }
}

extension $ApiAiTutorChatPostRequestCopyWith on ApiAiTutorChatPostRequest {
  /// Returns a callable class that can be used as follows: `instanceOfApiAiTutorChatPostRequest.copyWith(...)` or like so:`instanceOfApiAiTutorChatPostRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ApiAiTutorChatPostRequestCWProxy get copyWith =>
      _$ApiAiTutorChatPostRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiAiTutorChatPostRequest _$ApiAiTutorChatPostRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ApiAiTutorChatPostRequest', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['message']);
  final val = ApiAiTutorChatPostRequest(
    mode: $checkedConvert(
      'mode',
      (v) =>
          $enumDecodeNullable(_$ApiAiTutorChatPostRequestModeEnumEnumMap, v) ??
          ApiAiTutorChatPostRequestModeEnum.study,
    ),
    message: $checkedConvert('message', (v) => v as String),
    conversationId: $checkedConvert(
      'conversationId',
      (v) => (v as num?)?.toInt(),
    ),
  );
  return val;
});

Map<String, dynamic> _$ApiAiTutorChatPostRequestToJson(
  ApiAiTutorChatPostRequest instance,
) => <String, dynamic>{
  'mode': ?_$ApiAiTutorChatPostRequestModeEnumEnumMap[instance.mode],
  'message': instance.message,
  'conversationId': ?instance.conversationId,
};

const _$ApiAiTutorChatPostRequestModeEnumEnumMap = {
  ApiAiTutorChatPostRequestModeEnum.study: 'study',
  ApiAiTutorChatPostRequestModeEnum.emotion: 'emotion',
};
