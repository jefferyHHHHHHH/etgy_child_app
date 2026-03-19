// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_ai_tutor_conversations_id_get200_response_all_of_data_messages_inner.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ApiAiTutorConversationsIdGet200ResponseAllOfDataMessagesInnerCWProxy {
  ApiAiTutorConversationsIdGet200ResponseAllOfDataMessagesInner id(int id);

  ApiAiTutorConversationsIdGet200ResponseAllOfDataMessagesInner conversationId(
    int conversationId,
  );

  ApiAiTutorConversationsIdGet200ResponseAllOfDataMessagesInner role(
    ApiAiTutorConversationsIdGet200ResponseAllOfDataMessagesInnerRoleEnum role,
  );

  ApiAiTutorConversationsIdGet200ResponseAllOfDataMessagesInner content(
    String content,
  );

  ApiAiTutorConversationsIdGet200ResponseAllOfDataMessagesInner createdAt(
    DateTime createdAt,
  );

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiAiTutorConversationsIdGet200ResponseAllOfDataMessagesInner(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiAiTutorConversationsIdGet200ResponseAllOfDataMessagesInner(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiAiTutorConversationsIdGet200ResponseAllOfDataMessagesInner call({
    int id,
    int conversationId,
    ApiAiTutorConversationsIdGet200ResponseAllOfDataMessagesInnerRoleEnum role,
    String content,
    DateTime createdAt,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfApiAiTutorConversationsIdGet200ResponseAllOfDataMessagesInner.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfApiAiTutorConversationsIdGet200ResponseAllOfDataMessagesInner.copyWith.fieldName(...)`
class _$ApiAiTutorConversationsIdGet200ResponseAllOfDataMessagesInnerCWProxyImpl
    implements
        _$ApiAiTutorConversationsIdGet200ResponseAllOfDataMessagesInnerCWProxy {
  const _$ApiAiTutorConversationsIdGet200ResponseAllOfDataMessagesInnerCWProxyImpl(
    this._value,
  );

  final ApiAiTutorConversationsIdGet200ResponseAllOfDataMessagesInner _value;

  @override
  ApiAiTutorConversationsIdGet200ResponseAllOfDataMessagesInner id(int id) =>
      this(id: id);

  @override
  ApiAiTutorConversationsIdGet200ResponseAllOfDataMessagesInner conversationId(
    int conversationId,
  ) => this(conversationId: conversationId);

  @override
  ApiAiTutorConversationsIdGet200ResponseAllOfDataMessagesInner role(
    ApiAiTutorConversationsIdGet200ResponseAllOfDataMessagesInnerRoleEnum role,
  ) => this(role: role);

  @override
  ApiAiTutorConversationsIdGet200ResponseAllOfDataMessagesInner content(
    String content,
  ) => this(content: content);

  @override
  ApiAiTutorConversationsIdGet200ResponseAllOfDataMessagesInner createdAt(
    DateTime createdAt,
  ) => this(createdAt: createdAt);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiAiTutorConversationsIdGet200ResponseAllOfDataMessagesInner(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiAiTutorConversationsIdGet200ResponseAllOfDataMessagesInner(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiAiTutorConversationsIdGet200ResponseAllOfDataMessagesInner call({
    Object? id = const $CopyWithPlaceholder(),
    Object? conversationId = const $CopyWithPlaceholder(),
    Object? role = const $CopyWithPlaceholder(),
    Object? content = const $CopyWithPlaceholder(),
    Object? createdAt = const $CopyWithPlaceholder(),
  }) {
    return ApiAiTutorConversationsIdGet200ResponseAllOfDataMessagesInner(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int,
      conversationId: conversationId == const $CopyWithPlaceholder()
          ? _value.conversationId
          // ignore: cast_nullable_to_non_nullable
          : conversationId as int,
      role: role == const $CopyWithPlaceholder()
          ? _value.role
          // ignore: cast_nullable_to_non_nullable
          : role
                as ApiAiTutorConversationsIdGet200ResponseAllOfDataMessagesInnerRoleEnum,
      content: content == const $CopyWithPlaceholder()
          ? _value.content
          // ignore: cast_nullable_to_non_nullable
          : content as String,
      createdAt: createdAt == const $CopyWithPlaceholder()
          ? _value.createdAt
          // ignore: cast_nullable_to_non_nullable
          : createdAt as DateTime,
    );
  }
}

extension $ApiAiTutorConversationsIdGet200ResponseAllOfDataMessagesInnerCopyWith
    on ApiAiTutorConversationsIdGet200ResponseAllOfDataMessagesInner {
  /// Returns a callable class that can be used as follows: `instanceOfApiAiTutorConversationsIdGet200ResponseAllOfDataMessagesInner.copyWith(...)` or like so:`instanceOfApiAiTutorConversationsIdGet200ResponseAllOfDataMessagesInner.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ApiAiTutorConversationsIdGet200ResponseAllOfDataMessagesInnerCWProxy
  get copyWith =>
      _$ApiAiTutorConversationsIdGet200ResponseAllOfDataMessagesInnerCWProxyImpl(
        this,
      );
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiAiTutorConversationsIdGet200ResponseAllOfDataMessagesInner
_$ApiAiTutorConversationsIdGet200ResponseAllOfDataMessagesInnerFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'ApiAiTutorConversationsIdGet200ResponseAllOfDataMessagesInner',
  json,
  ($checkedConvert) {
    $checkKeys(
      json,
      requiredKeys: const [
        'id',
        'conversationId',
        'role',
        'content',
        'createdAt',
      ],
    );
    final val = ApiAiTutorConversationsIdGet200ResponseAllOfDataMessagesInner(
      id: $checkedConvert('id', (v) => (v as num).toInt()),
      conversationId: $checkedConvert(
        'conversationId',
        (v) => (v as num).toInt(),
      ),
      role: $checkedConvert(
        'role',
        (v) => $enumDecode(
          _$ApiAiTutorConversationsIdGet200ResponseAllOfDataMessagesInnerRoleEnumEnumMap,
          v,
        ),
      ),
      content: $checkedConvert('content', (v) => v as String),
      createdAt: $checkedConvert(
        'createdAt',
        (v) => DateTime.parse(v as String),
      ),
    );
    return val;
  },
);

Map<String, dynamic>
_$ApiAiTutorConversationsIdGet200ResponseAllOfDataMessagesInnerToJson(
  ApiAiTutorConversationsIdGet200ResponseAllOfDataMessagesInner instance,
) => <String, dynamic>{
  'id': instance.id,
  'conversationId': instance.conversationId,
  'role':
      _$ApiAiTutorConversationsIdGet200ResponseAllOfDataMessagesInnerRoleEnumEnumMap[instance
          .role]!,
  'content': instance.content,
  'createdAt': instance.createdAt.toIso8601String(),
};

const _$ApiAiTutorConversationsIdGet200ResponseAllOfDataMessagesInnerRoleEnumEnumMap =
    {
      ApiAiTutorConversationsIdGet200ResponseAllOfDataMessagesInnerRoleEnum
              .SYSTEM:
          'SYSTEM',
      ApiAiTutorConversationsIdGet200ResponseAllOfDataMessagesInnerRoleEnum
              .USER:
          'USER',
      ApiAiTutorConversationsIdGet200ResponseAllOfDataMessagesInnerRoleEnum
              .ASSISTANT:
          'ASSISTANT',
    };
