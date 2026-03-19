// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_ai_tutor_conversations_id_get200_response_all_of_data.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ApiAiTutorConversationsIdGet200ResponseAllOfDataCWProxy {
  ApiAiTutorConversationsIdGet200ResponseAllOfData id(int id);

  ApiAiTutorConversationsIdGet200ResponseAllOfData userId(int userId);

  ApiAiTutorConversationsIdGet200ResponseAllOfData mode(
    ApiAiTutorConversationsIdGet200ResponseAllOfDataModeEnum mode,
  );

  ApiAiTutorConversationsIdGet200ResponseAllOfData createdAt(
    DateTime createdAt,
  );

  ApiAiTutorConversationsIdGet200ResponseAllOfData updatedAt(
    DateTime updatedAt,
  );

  ApiAiTutorConversationsIdGet200ResponseAllOfData messages(
    List<ApiAiTutorConversationsIdGet200ResponseAllOfDataMessagesInner>
    messages,
  );

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiAiTutorConversationsIdGet200ResponseAllOfData(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiAiTutorConversationsIdGet200ResponseAllOfData(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiAiTutorConversationsIdGet200ResponseAllOfData call({
    int id,
    int userId,
    ApiAiTutorConversationsIdGet200ResponseAllOfDataModeEnum mode,
    DateTime createdAt,
    DateTime updatedAt,
    List<ApiAiTutorConversationsIdGet200ResponseAllOfDataMessagesInner>
    messages,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfApiAiTutorConversationsIdGet200ResponseAllOfData.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfApiAiTutorConversationsIdGet200ResponseAllOfData.copyWith.fieldName(...)`
class _$ApiAiTutorConversationsIdGet200ResponseAllOfDataCWProxyImpl
    implements _$ApiAiTutorConversationsIdGet200ResponseAllOfDataCWProxy {
  const _$ApiAiTutorConversationsIdGet200ResponseAllOfDataCWProxyImpl(
    this._value,
  );

  final ApiAiTutorConversationsIdGet200ResponseAllOfData _value;

  @override
  ApiAiTutorConversationsIdGet200ResponseAllOfData id(int id) => this(id: id);

  @override
  ApiAiTutorConversationsIdGet200ResponseAllOfData userId(int userId) =>
      this(userId: userId);

  @override
  ApiAiTutorConversationsIdGet200ResponseAllOfData mode(
    ApiAiTutorConversationsIdGet200ResponseAllOfDataModeEnum mode,
  ) => this(mode: mode);

  @override
  ApiAiTutorConversationsIdGet200ResponseAllOfData createdAt(
    DateTime createdAt,
  ) => this(createdAt: createdAt);

  @override
  ApiAiTutorConversationsIdGet200ResponseAllOfData updatedAt(
    DateTime updatedAt,
  ) => this(updatedAt: updatedAt);

  @override
  ApiAiTutorConversationsIdGet200ResponseAllOfData messages(
    List<ApiAiTutorConversationsIdGet200ResponseAllOfDataMessagesInner>
    messages,
  ) => this(messages: messages);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiAiTutorConversationsIdGet200ResponseAllOfData(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiAiTutorConversationsIdGet200ResponseAllOfData(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiAiTutorConversationsIdGet200ResponseAllOfData call({
    Object? id = const $CopyWithPlaceholder(),
    Object? userId = const $CopyWithPlaceholder(),
    Object? mode = const $CopyWithPlaceholder(),
    Object? createdAt = const $CopyWithPlaceholder(),
    Object? updatedAt = const $CopyWithPlaceholder(),
    Object? messages = const $CopyWithPlaceholder(),
  }) {
    return ApiAiTutorConversationsIdGet200ResponseAllOfData(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int,
      userId: userId == const $CopyWithPlaceholder()
          ? _value.userId
          // ignore: cast_nullable_to_non_nullable
          : userId as int,
      mode: mode == const $CopyWithPlaceholder()
          ? _value.mode
          // ignore: cast_nullable_to_non_nullable
          : mode as ApiAiTutorConversationsIdGet200ResponseAllOfDataModeEnum,
      createdAt: createdAt == const $CopyWithPlaceholder()
          ? _value.createdAt
          // ignore: cast_nullable_to_non_nullable
          : createdAt as DateTime,
      updatedAt: updatedAt == const $CopyWithPlaceholder()
          ? _value.updatedAt
          // ignore: cast_nullable_to_non_nullable
          : updatedAt as DateTime,
      messages: messages == const $CopyWithPlaceholder()
          ? _value.messages
          // ignore: cast_nullable_to_non_nullable
          : messages
                as List<
                  ApiAiTutorConversationsIdGet200ResponseAllOfDataMessagesInner
                >,
    );
  }
}

extension $ApiAiTutorConversationsIdGet200ResponseAllOfDataCopyWith
    on ApiAiTutorConversationsIdGet200ResponseAllOfData {
  /// Returns a callable class that can be used as follows: `instanceOfApiAiTutorConversationsIdGet200ResponseAllOfData.copyWith(...)` or like so:`instanceOfApiAiTutorConversationsIdGet200ResponseAllOfData.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ApiAiTutorConversationsIdGet200ResponseAllOfDataCWProxy get copyWith =>
      _$ApiAiTutorConversationsIdGet200ResponseAllOfDataCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiAiTutorConversationsIdGet200ResponseAllOfData
_$ApiAiTutorConversationsIdGet200ResponseAllOfDataFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ApiAiTutorConversationsIdGet200ResponseAllOfData', json, (
  $checkedConvert,
) {
  $checkKeys(
    json,
    requiredKeys: const [
      'id',
      'userId',
      'mode',
      'createdAt',
      'updatedAt',
      'messages',
    ],
  );
  final val = ApiAiTutorConversationsIdGet200ResponseAllOfData(
    id: $checkedConvert('id', (v) => (v as num).toInt()),
    userId: $checkedConvert('userId', (v) => (v as num).toInt()),
    mode: $checkedConvert(
      'mode',
      (v) => $enumDecode(
        _$ApiAiTutorConversationsIdGet200ResponseAllOfDataModeEnumEnumMap,
        v,
      ),
    ),
    createdAt: $checkedConvert('createdAt', (v) => DateTime.parse(v as String)),
    updatedAt: $checkedConvert('updatedAt', (v) => DateTime.parse(v as String)),
    messages: $checkedConvert(
      'messages',
      (v) => (v as List<dynamic>)
          .map(
            (e) =>
                ApiAiTutorConversationsIdGet200ResponseAllOfDataMessagesInner.fromJson(
                  e as Map<String, dynamic>,
                ),
          )
          .toList(),
    ),
  );
  return val;
});

Map<String, dynamic> _$ApiAiTutorConversationsIdGet200ResponseAllOfDataToJson(
  ApiAiTutorConversationsIdGet200ResponseAllOfData instance,
) => <String, dynamic>{
  'id': instance.id,
  'userId': instance.userId,
  'mode':
      _$ApiAiTutorConversationsIdGet200ResponseAllOfDataModeEnumEnumMap[instance
          .mode]!,
  'createdAt': instance.createdAt.toIso8601String(),
  'updatedAt': instance.updatedAt.toIso8601String(),
  'messages': instance.messages.map((e) => e.toJson()).toList(),
};

const _$ApiAiTutorConversationsIdGet200ResponseAllOfDataModeEnumEnumMap = {
  ApiAiTutorConversationsIdGet200ResponseAllOfDataModeEnum.STUDY: 'STUDY',
  ApiAiTutorConversationsIdGet200ResponseAllOfDataModeEnum.EMOTION: 'EMOTION',
};
