// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_ai_tutor_conversations_get200_response_all_of_data_items_inner_last_message.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ApiAiTutorConversationsGet200ResponseAllOfDataItemsInnerLastMessageCWProxy {
  ApiAiTutorConversationsGet200ResponseAllOfDataItemsInnerLastMessage role(
    ApiAiTutorConversationsGet200ResponseAllOfDataItemsInnerLastMessageRoleEnum
    role,
  );

  ApiAiTutorConversationsGet200ResponseAllOfDataItemsInnerLastMessage content(
    String content,
  );

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiAiTutorConversationsGet200ResponseAllOfDataItemsInnerLastMessage(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiAiTutorConversationsGet200ResponseAllOfDataItemsInnerLastMessage(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiAiTutorConversationsGet200ResponseAllOfDataItemsInnerLastMessage call({
    ApiAiTutorConversationsGet200ResponseAllOfDataItemsInnerLastMessageRoleEnum
    role,
    String content,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfApiAiTutorConversationsGet200ResponseAllOfDataItemsInnerLastMessage.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfApiAiTutorConversationsGet200ResponseAllOfDataItemsInnerLastMessage.copyWith.fieldName(...)`
class _$ApiAiTutorConversationsGet200ResponseAllOfDataItemsInnerLastMessageCWProxyImpl
    implements
        _$ApiAiTutorConversationsGet200ResponseAllOfDataItemsInnerLastMessageCWProxy {
  const _$ApiAiTutorConversationsGet200ResponseAllOfDataItemsInnerLastMessageCWProxyImpl(
    this._value,
  );

  final ApiAiTutorConversationsGet200ResponseAllOfDataItemsInnerLastMessage
  _value;

  @override
  ApiAiTutorConversationsGet200ResponseAllOfDataItemsInnerLastMessage role(
    ApiAiTutorConversationsGet200ResponseAllOfDataItemsInnerLastMessageRoleEnum
    role,
  ) => this(role: role);

  @override
  ApiAiTutorConversationsGet200ResponseAllOfDataItemsInnerLastMessage content(
    String content,
  ) => this(content: content);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiAiTutorConversationsGet200ResponseAllOfDataItemsInnerLastMessage(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiAiTutorConversationsGet200ResponseAllOfDataItemsInnerLastMessage(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiAiTutorConversationsGet200ResponseAllOfDataItemsInnerLastMessage call({
    Object? role = const $CopyWithPlaceholder(),
    Object? content = const $CopyWithPlaceholder(),
  }) {
    return ApiAiTutorConversationsGet200ResponseAllOfDataItemsInnerLastMessage(
      role: role == const $CopyWithPlaceholder()
          ? _value.role
          // ignore: cast_nullable_to_non_nullable
          : role
                as ApiAiTutorConversationsGet200ResponseAllOfDataItemsInnerLastMessageRoleEnum,
      content: content == const $CopyWithPlaceholder()
          ? _value.content
          // ignore: cast_nullable_to_non_nullable
          : content as String,
    );
  }
}

extension $ApiAiTutorConversationsGet200ResponseAllOfDataItemsInnerLastMessageCopyWith
    on ApiAiTutorConversationsGet200ResponseAllOfDataItemsInnerLastMessage {
  /// Returns a callable class that can be used as follows: `instanceOfApiAiTutorConversationsGet200ResponseAllOfDataItemsInnerLastMessage.copyWith(...)` or like so:`instanceOfApiAiTutorConversationsGet200ResponseAllOfDataItemsInnerLastMessage.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ApiAiTutorConversationsGet200ResponseAllOfDataItemsInnerLastMessageCWProxy
  get copyWith =>
      _$ApiAiTutorConversationsGet200ResponseAllOfDataItemsInnerLastMessageCWProxyImpl(
        this,
      );
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiAiTutorConversationsGet200ResponseAllOfDataItemsInnerLastMessage
_$ApiAiTutorConversationsGet200ResponseAllOfDataItemsInnerLastMessageFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'ApiAiTutorConversationsGet200ResponseAllOfDataItemsInnerLastMessage',
  json,
  ($checkedConvert) {
    $checkKeys(json, requiredKeys: const ['role', 'content']);
    final val = ApiAiTutorConversationsGet200ResponseAllOfDataItemsInnerLastMessage(
      role: $checkedConvert(
        'role',
        (v) => $enumDecode(
          _$ApiAiTutorConversationsGet200ResponseAllOfDataItemsInnerLastMessageRoleEnumEnumMap,
          v,
        ),
      ),
      content: $checkedConvert('content', (v) => v as String),
    );
    return val;
  },
);

Map<String, dynamic>
_$ApiAiTutorConversationsGet200ResponseAllOfDataItemsInnerLastMessageToJson(
  ApiAiTutorConversationsGet200ResponseAllOfDataItemsInnerLastMessage instance,
) => <String, dynamic>{
  'role':
      _$ApiAiTutorConversationsGet200ResponseAllOfDataItemsInnerLastMessageRoleEnumEnumMap[instance
          .role]!,
  'content': instance.content,
};

const _$ApiAiTutorConversationsGet200ResponseAllOfDataItemsInnerLastMessageRoleEnumEnumMap = {
  ApiAiTutorConversationsGet200ResponseAllOfDataItemsInnerLastMessageRoleEnum
          .SYSTEM:
      'SYSTEM',
  ApiAiTutorConversationsGet200ResponseAllOfDataItemsInnerLastMessageRoleEnum
          .USER:
      'USER',
  ApiAiTutorConversationsGet200ResponseAllOfDataItemsInnerLastMessageRoleEnum
          .ASSISTANT:
      'ASSISTANT',
};
