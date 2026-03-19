// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_platform_content_policy_put_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ApiPlatformContentPolicyPutRequestCWProxy {
  ApiPlatformContentPolicyPutRequest commentsEnabled(bool? commentsEnabled);

  ApiPlatformContentPolicyPutRequest liveChatEnabled(bool? liveChatEnabled);

  ApiPlatformContentPolicyPutRequest moderationAction(
    ApiPlatformContentPolicyPutRequestModerationActionEnum? moderationAction,
  );

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiPlatformContentPolicyPutRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiPlatformContentPolicyPutRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiPlatformContentPolicyPutRequest call({
    bool? commentsEnabled,
    bool? liveChatEnabled,
    ApiPlatformContentPolicyPutRequestModerationActionEnum? moderationAction,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfApiPlatformContentPolicyPutRequest.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfApiPlatformContentPolicyPutRequest.copyWith.fieldName(...)`
class _$ApiPlatformContentPolicyPutRequestCWProxyImpl
    implements _$ApiPlatformContentPolicyPutRequestCWProxy {
  const _$ApiPlatformContentPolicyPutRequestCWProxyImpl(this._value);

  final ApiPlatformContentPolicyPutRequest _value;

  @override
  ApiPlatformContentPolicyPutRequest commentsEnabled(bool? commentsEnabled) =>
      this(commentsEnabled: commentsEnabled);

  @override
  ApiPlatformContentPolicyPutRequest liveChatEnabled(bool? liveChatEnabled) =>
      this(liveChatEnabled: liveChatEnabled);

  @override
  ApiPlatformContentPolicyPutRequest moderationAction(
    ApiPlatformContentPolicyPutRequestModerationActionEnum? moderationAction,
  ) => this(moderationAction: moderationAction);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiPlatformContentPolicyPutRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiPlatformContentPolicyPutRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiPlatformContentPolicyPutRequest call({
    Object? commentsEnabled = const $CopyWithPlaceholder(),
    Object? liveChatEnabled = const $CopyWithPlaceholder(),
    Object? moderationAction = const $CopyWithPlaceholder(),
  }) {
    return ApiPlatformContentPolicyPutRequest(
      commentsEnabled: commentsEnabled == const $CopyWithPlaceholder()
          ? _value.commentsEnabled
          // ignore: cast_nullable_to_non_nullable
          : commentsEnabled as bool?,
      liveChatEnabled: liveChatEnabled == const $CopyWithPlaceholder()
          ? _value.liveChatEnabled
          // ignore: cast_nullable_to_non_nullable
          : liveChatEnabled as bool?,
      moderationAction: moderationAction == const $CopyWithPlaceholder()
          ? _value.moderationAction
          // ignore: cast_nullable_to_non_nullable
          : moderationAction
                as ApiPlatformContentPolicyPutRequestModerationActionEnum?,
    );
  }
}

extension $ApiPlatformContentPolicyPutRequestCopyWith
    on ApiPlatformContentPolicyPutRequest {
  /// Returns a callable class that can be used as follows: `instanceOfApiPlatformContentPolicyPutRequest.copyWith(...)` or like so:`instanceOfApiPlatformContentPolicyPutRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ApiPlatformContentPolicyPutRequestCWProxy get copyWith =>
      _$ApiPlatformContentPolicyPutRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiPlatformContentPolicyPutRequest _$ApiPlatformContentPolicyPutRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ApiPlatformContentPolicyPutRequest', json, (
  $checkedConvert,
) {
  final val = ApiPlatformContentPolicyPutRequest(
    commentsEnabled: $checkedConvert('commentsEnabled', (v) => v as bool?),
    liveChatEnabled: $checkedConvert('liveChatEnabled', (v) => v as bool?),
    moderationAction: $checkedConvert(
      'moderationAction',
      (v) => $enumDecodeNullable(
        _$ApiPlatformContentPolicyPutRequestModerationActionEnumEnumMap,
        v,
      ),
    ),
  );
  return val;
});

Map<String, dynamic> _$ApiPlatformContentPolicyPutRequestToJson(
  ApiPlatformContentPolicyPutRequest instance,
) => <String, dynamic>{
  'commentsEnabled': ?instance.commentsEnabled,
  'liveChatEnabled': ?instance.liveChatEnabled,
  'moderationAction':
      ?_$ApiPlatformContentPolicyPutRequestModerationActionEnumEnumMap[instance
          .moderationAction],
};

const _$ApiPlatformContentPolicyPutRequestModerationActionEnumEnumMap = {
  ApiPlatformContentPolicyPutRequestModerationActionEnum.REJECT: 'REJECT',
  ApiPlatformContentPolicyPutRequestModerationActionEnum.MASK: 'MASK',
};
