// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_ai_tutor_conversations_get200_response_all_of_data_items_inner.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ApiAiTutorConversationsGet200ResponseAllOfDataItemsInnerCWProxy {
  ApiAiTutorConversationsGet200ResponseAllOfDataItemsInner id(int id);

  ApiAiTutorConversationsGet200ResponseAllOfDataItemsInner mode(
    ApiAiTutorConversationsGet200ResponseAllOfDataItemsInnerModeEnum mode,
  );

  ApiAiTutorConversationsGet200ResponseAllOfDataItemsInner createdAt(
    DateTime createdAt,
  );

  ApiAiTutorConversationsGet200ResponseAllOfDataItemsInner updatedAt(
    DateTime updatedAt,
  );

  ApiAiTutorConversationsGet200ResponseAllOfDataItemsInner lastMessage(
    ApiAiTutorConversationsGet200ResponseAllOfDataItemsInnerLastMessage?
    lastMessage,
  );

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiAiTutorConversationsGet200ResponseAllOfDataItemsInner(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiAiTutorConversationsGet200ResponseAllOfDataItemsInner(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiAiTutorConversationsGet200ResponseAllOfDataItemsInner call({
    int id,
    ApiAiTutorConversationsGet200ResponseAllOfDataItemsInnerModeEnum mode,
    DateTime createdAt,
    DateTime updatedAt,
    ApiAiTutorConversationsGet200ResponseAllOfDataItemsInnerLastMessage?
    lastMessage,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfApiAiTutorConversationsGet200ResponseAllOfDataItemsInner.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfApiAiTutorConversationsGet200ResponseAllOfDataItemsInner.copyWith.fieldName(...)`
class _$ApiAiTutorConversationsGet200ResponseAllOfDataItemsInnerCWProxyImpl
    implements
        _$ApiAiTutorConversationsGet200ResponseAllOfDataItemsInnerCWProxy {
  const _$ApiAiTutorConversationsGet200ResponseAllOfDataItemsInnerCWProxyImpl(
    this._value,
  );

  final ApiAiTutorConversationsGet200ResponseAllOfDataItemsInner _value;

  @override
  ApiAiTutorConversationsGet200ResponseAllOfDataItemsInner id(int id) =>
      this(id: id);

  @override
  ApiAiTutorConversationsGet200ResponseAllOfDataItemsInner mode(
    ApiAiTutorConversationsGet200ResponseAllOfDataItemsInnerModeEnum mode,
  ) => this(mode: mode);

  @override
  ApiAiTutorConversationsGet200ResponseAllOfDataItemsInner createdAt(
    DateTime createdAt,
  ) => this(createdAt: createdAt);

  @override
  ApiAiTutorConversationsGet200ResponseAllOfDataItemsInner updatedAt(
    DateTime updatedAt,
  ) => this(updatedAt: updatedAt);

  @override
  ApiAiTutorConversationsGet200ResponseAllOfDataItemsInner lastMessage(
    ApiAiTutorConversationsGet200ResponseAllOfDataItemsInnerLastMessage?
    lastMessage,
  ) => this(lastMessage: lastMessage);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiAiTutorConversationsGet200ResponseAllOfDataItemsInner(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiAiTutorConversationsGet200ResponseAllOfDataItemsInner(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiAiTutorConversationsGet200ResponseAllOfDataItemsInner call({
    Object? id = const $CopyWithPlaceholder(),
    Object? mode = const $CopyWithPlaceholder(),
    Object? createdAt = const $CopyWithPlaceholder(),
    Object? updatedAt = const $CopyWithPlaceholder(),
    Object? lastMessage = const $CopyWithPlaceholder(),
  }) {
    return ApiAiTutorConversationsGet200ResponseAllOfDataItemsInner(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int,
      mode: mode == const $CopyWithPlaceholder()
          ? _value.mode
          // ignore: cast_nullable_to_non_nullable
          : mode
                as ApiAiTutorConversationsGet200ResponseAllOfDataItemsInnerModeEnum,
      createdAt: createdAt == const $CopyWithPlaceholder()
          ? _value.createdAt
          // ignore: cast_nullable_to_non_nullable
          : createdAt as DateTime,
      updatedAt: updatedAt == const $CopyWithPlaceholder()
          ? _value.updatedAt
          // ignore: cast_nullable_to_non_nullable
          : updatedAt as DateTime,
      lastMessage: lastMessage == const $CopyWithPlaceholder()
          ? _value.lastMessage
          // ignore: cast_nullable_to_non_nullable
          : lastMessage
                as ApiAiTutorConversationsGet200ResponseAllOfDataItemsInnerLastMessage?,
    );
  }
}

extension $ApiAiTutorConversationsGet200ResponseAllOfDataItemsInnerCopyWith
    on ApiAiTutorConversationsGet200ResponseAllOfDataItemsInner {
  /// Returns a callable class that can be used as follows: `instanceOfApiAiTutorConversationsGet200ResponseAllOfDataItemsInner.copyWith(...)` or like so:`instanceOfApiAiTutorConversationsGet200ResponseAllOfDataItemsInner.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ApiAiTutorConversationsGet200ResponseAllOfDataItemsInnerCWProxy
  get copyWith =>
      _$ApiAiTutorConversationsGet200ResponseAllOfDataItemsInnerCWProxyImpl(
        this,
      );
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiAiTutorConversationsGet200ResponseAllOfDataItemsInner
_$ApiAiTutorConversationsGet200ResponseAllOfDataItemsInnerFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'ApiAiTutorConversationsGet200ResponseAllOfDataItemsInner',
  json,
  ($checkedConvert) {
    $checkKeys(
      json,
      requiredKeys: const [
        'id',
        'mode',
        'createdAt',
        'updatedAt',
        'lastMessage',
      ],
    );
    final val = ApiAiTutorConversationsGet200ResponseAllOfDataItemsInner(
      id: $checkedConvert('id', (v) => (v as num).toInt()),
      mode: $checkedConvert(
        'mode',
        (v) => $enumDecode(
          _$ApiAiTutorConversationsGet200ResponseAllOfDataItemsInnerModeEnumEnumMap,
          v,
        ),
      ),
      createdAt: $checkedConvert(
        'createdAt',
        (v) => DateTime.parse(v as String),
      ),
      updatedAt: $checkedConvert(
        'updatedAt',
        (v) => DateTime.parse(v as String),
      ),
      lastMessage: $checkedConvert(
        'lastMessage',
        (v) => v == null
            ? null
            : ApiAiTutorConversationsGet200ResponseAllOfDataItemsInnerLastMessage.fromJson(
                v as Map<String, dynamic>,
              ),
      ),
    );
    return val;
  },
);

Map<String, dynamic>
_$ApiAiTutorConversationsGet200ResponseAllOfDataItemsInnerToJson(
  ApiAiTutorConversationsGet200ResponseAllOfDataItemsInner instance,
) => <String, dynamic>{
  'id': instance.id,
  'mode':
      _$ApiAiTutorConversationsGet200ResponseAllOfDataItemsInnerModeEnumEnumMap[instance
          .mode]!,
  'createdAt': instance.createdAt.toIso8601String(),
  'updatedAt': instance.updatedAt.toIso8601String(),
  'lastMessage': instance.lastMessage?.toJson(),
};

const _$ApiAiTutorConversationsGet200ResponseAllOfDataItemsInnerModeEnumEnumMap =
    {
      ApiAiTutorConversationsGet200ResponseAllOfDataItemsInnerModeEnum.STUDY:
          'STUDY',
      ApiAiTutorConversationsGet200ResponseAllOfDataItemsInnerModeEnum.EMOTION:
          'EMOTION',
    };
