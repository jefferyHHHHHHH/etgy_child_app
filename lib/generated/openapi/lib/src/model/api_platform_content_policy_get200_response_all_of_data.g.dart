// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_platform_content_policy_get200_response_all_of_data.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ApiPlatformContentPolicyGet200ResponseAllOfDataCWProxy {
  ApiPlatformContentPolicyGet200ResponseAllOfData commentsEnabled(
    bool commentsEnabled,
  );

  ApiPlatformContentPolicyGet200ResponseAllOfData liveChatEnabled(
    bool liveChatEnabled,
  );

  ApiPlatformContentPolicyGet200ResponseAllOfData moderationAction(
    ApiPlatformContentPolicyGet200ResponseAllOfDataModerationActionEnum
    moderationAction,
  );

  ApiPlatformContentPolicyGet200ResponseAllOfData updatedAt(String updatedAt);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiPlatformContentPolicyGet200ResponseAllOfData(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiPlatformContentPolicyGet200ResponseAllOfData(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiPlatformContentPolicyGet200ResponseAllOfData call({
    bool commentsEnabled,
    bool liveChatEnabled,
    ApiPlatformContentPolicyGet200ResponseAllOfDataModerationActionEnum
    moderationAction,
    String updatedAt,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfApiPlatformContentPolicyGet200ResponseAllOfData.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfApiPlatformContentPolicyGet200ResponseAllOfData.copyWith.fieldName(...)`
class _$ApiPlatformContentPolicyGet200ResponseAllOfDataCWProxyImpl
    implements _$ApiPlatformContentPolicyGet200ResponseAllOfDataCWProxy {
  const _$ApiPlatformContentPolicyGet200ResponseAllOfDataCWProxyImpl(
    this._value,
  );

  final ApiPlatformContentPolicyGet200ResponseAllOfData _value;

  @override
  ApiPlatformContentPolicyGet200ResponseAllOfData commentsEnabled(
    bool commentsEnabled,
  ) => this(commentsEnabled: commentsEnabled);

  @override
  ApiPlatformContentPolicyGet200ResponseAllOfData liveChatEnabled(
    bool liveChatEnabled,
  ) => this(liveChatEnabled: liveChatEnabled);

  @override
  ApiPlatformContentPolicyGet200ResponseAllOfData moderationAction(
    ApiPlatformContentPolicyGet200ResponseAllOfDataModerationActionEnum
    moderationAction,
  ) => this(moderationAction: moderationAction);

  @override
  ApiPlatformContentPolicyGet200ResponseAllOfData updatedAt(String updatedAt) =>
      this(updatedAt: updatedAt);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiPlatformContentPolicyGet200ResponseAllOfData(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiPlatformContentPolicyGet200ResponseAllOfData(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiPlatformContentPolicyGet200ResponseAllOfData call({
    Object? commentsEnabled = const $CopyWithPlaceholder(),
    Object? liveChatEnabled = const $CopyWithPlaceholder(),
    Object? moderationAction = const $CopyWithPlaceholder(),
    Object? updatedAt = const $CopyWithPlaceholder(),
  }) {
    return ApiPlatformContentPolicyGet200ResponseAllOfData(
      commentsEnabled: commentsEnabled == const $CopyWithPlaceholder()
          ? _value.commentsEnabled
          // ignore: cast_nullable_to_non_nullable
          : commentsEnabled as bool,
      liveChatEnabled: liveChatEnabled == const $CopyWithPlaceholder()
          ? _value.liveChatEnabled
          // ignore: cast_nullable_to_non_nullable
          : liveChatEnabled as bool,
      moderationAction: moderationAction == const $CopyWithPlaceholder()
          ? _value.moderationAction
          // ignore: cast_nullable_to_non_nullable
          : moderationAction
                as ApiPlatformContentPolicyGet200ResponseAllOfDataModerationActionEnum,
      updatedAt: updatedAt == const $CopyWithPlaceholder()
          ? _value.updatedAt
          // ignore: cast_nullable_to_non_nullable
          : updatedAt as String,
    );
  }
}

extension $ApiPlatformContentPolicyGet200ResponseAllOfDataCopyWith
    on ApiPlatformContentPolicyGet200ResponseAllOfData {
  /// Returns a callable class that can be used as follows: `instanceOfApiPlatformContentPolicyGet200ResponseAllOfData.copyWith(...)` or like so:`instanceOfApiPlatformContentPolicyGet200ResponseAllOfData.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ApiPlatformContentPolicyGet200ResponseAllOfDataCWProxy get copyWith =>
      _$ApiPlatformContentPolicyGet200ResponseAllOfDataCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiPlatformContentPolicyGet200ResponseAllOfData
_$ApiPlatformContentPolicyGet200ResponseAllOfDataFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ApiPlatformContentPolicyGet200ResponseAllOfData', json, (
  $checkedConvert,
) {
  $checkKeys(
    json,
    requiredKeys: const [
      'commentsEnabled',
      'liveChatEnabled',
      'moderationAction',
      'updatedAt',
    ],
  );
  final val = ApiPlatformContentPolicyGet200ResponseAllOfData(
    commentsEnabled: $checkedConvert('commentsEnabled', (v) => v as bool),
    liveChatEnabled: $checkedConvert('liveChatEnabled', (v) => v as bool),
    moderationAction: $checkedConvert(
      'moderationAction',
      (v) => $enumDecode(
        _$ApiPlatformContentPolicyGet200ResponseAllOfDataModerationActionEnumEnumMap,
        v,
      ),
    ),
    updatedAt: $checkedConvert('updatedAt', (v) => v as String),
  );
  return val;
});

Map<String, dynamic> _$ApiPlatformContentPolicyGet200ResponseAllOfDataToJson(
  ApiPlatformContentPolicyGet200ResponseAllOfData instance,
) => <String, dynamic>{
  'commentsEnabled': instance.commentsEnabled,
  'liveChatEnabled': instance.liveChatEnabled,
  'moderationAction':
      _$ApiPlatformContentPolicyGet200ResponseAllOfDataModerationActionEnumEnumMap[instance
          .moderationAction]!,
  'updatedAt': instance.updatedAt,
};

const _$ApiPlatformContentPolicyGet200ResponseAllOfDataModerationActionEnumEnumMap =
    {
      ApiPlatformContentPolicyGet200ResponseAllOfDataModerationActionEnum
              .REJECT:
          'REJECT',
      ApiPlatformContentPolicyGet200ResponseAllOfDataModerationActionEnum.MASK:
          'MASK',
    };
