// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_live_id_messages_post_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ApiLiveIdMessagesPostRequestCWProxy {
  ApiLiveIdMessagesPostRequest type(ApiLiveIdMessagesPostRequestTypeEnum? type);

  ApiLiveIdMessagesPostRequest content(String content);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiLiveIdMessagesPostRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiLiveIdMessagesPostRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiLiveIdMessagesPostRequest call({
    ApiLiveIdMessagesPostRequestTypeEnum? type,
    String content,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfApiLiveIdMessagesPostRequest.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfApiLiveIdMessagesPostRequest.copyWith.fieldName(...)`
class _$ApiLiveIdMessagesPostRequestCWProxyImpl
    implements _$ApiLiveIdMessagesPostRequestCWProxy {
  const _$ApiLiveIdMessagesPostRequestCWProxyImpl(this._value);

  final ApiLiveIdMessagesPostRequest _value;

  @override
  ApiLiveIdMessagesPostRequest type(
    ApiLiveIdMessagesPostRequestTypeEnum? type,
  ) => this(type: type);

  @override
  ApiLiveIdMessagesPostRequest content(String content) =>
      this(content: content);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiLiveIdMessagesPostRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiLiveIdMessagesPostRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiLiveIdMessagesPostRequest call({
    Object? type = const $CopyWithPlaceholder(),
    Object? content = const $CopyWithPlaceholder(),
  }) {
    return ApiLiveIdMessagesPostRequest(
      type: type == const $CopyWithPlaceholder()
          ? _value.type
          // ignore: cast_nullable_to_non_nullable
          : type as ApiLiveIdMessagesPostRequestTypeEnum?,
      content: content == const $CopyWithPlaceholder()
          ? _value.content
          // ignore: cast_nullable_to_non_nullable
          : content as String,
    );
  }
}

extension $ApiLiveIdMessagesPostRequestCopyWith
    on ApiLiveIdMessagesPostRequest {
  /// Returns a callable class that can be used as follows: `instanceOfApiLiveIdMessagesPostRequest.copyWith(...)` or like so:`instanceOfApiLiveIdMessagesPostRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ApiLiveIdMessagesPostRequestCWProxy get copyWith =>
      _$ApiLiveIdMessagesPostRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiLiveIdMessagesPostRequest _$ApiLiveIdMessagesPostRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ApiLiveIdMessagesPostRequest', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['content']);
  final val = ApiLiveIdMessagesPostRequest(
    type: $checkedConvert(
      'type',
      (v) =>
          $enumDecodeNullable(_$ApiLiveIdMessagesPostRequestTypeEnumEnumMap, v),
    ),
    content: $checkedConvert('content', (v) => v as String),
  );
  return val;
});

Map<String, dynamic> _$ApiLiveIdMessagesPostRequestToJson(
  ApiLiveIdMessagesPostRequest instance,
) => <String, dynamic>{
  'type': ?_$ApiLiveIdMessagesPostRequestTypeEnumEnumMap[instance.type],
  'content': instance.content,
};

const _$ApiLiveIdMessagesPostRequestTypeEnumEnumMap = {
  ApiLiveIdMessagesPostRequestTypeEnum.CHAT: 'CHAT',
  ApiLiveIdMessagesPostRequestTypeEnum.QA: 'QA',
};
