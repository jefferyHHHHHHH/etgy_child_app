// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'live_message.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$LiveMessageCWProxy {
  LiveMessage id(int id);

  LiveMessage liveId(int liveId);

  LiveMessage senderId(int senderId);

  LiveMessage type(LiveMessageTypeEnum type);

  LiveMessage content(String content);

  LiveMessage createdAt(DateTime createdAt);

  LiveMessage sender(Object? sender);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `LiveMessage(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// LiveMessage(...).copyWith(id: 12, name: "My name")
  /// ````
  LiveMessage call({
    int id,
    int liveId,
    int senderId,
    LiveMessageTypeEnum type,
    String content,
    DateTime createdAt,
    Object? sender,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfLiveMessage.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfLiveMessage.copyWith.fieldName(...)`
class _$LiveMessageCWProxyImpl implements _$LiveMessageCWProxy {
  const _$LiveMessageCWProxyImpl(this._value);

  final LiveMessage _value;

  @override
  LiveMessage id(int id) => this(id: id);

  @override
  LiveMessage liveId(int liveId) => this(liveId: liveId);

  @override
  LiveMessage senderId(int senderId) => this(senderId: senderId);

  @override
  LiveMessage type(LiveMessageTypeEnum type) => this(type: type);

  @override
  LiveMessage content(String content) => this(content: content);

  @override
  LiveMessage createdAt(DateTime createdAt) => this(createdAt: createdAt);

  @override
  LiveMessage sender(Object? sender) => this(sender: sender);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `LiveMessage(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// LiveMessage(...).copyWith(id: 12, name: "My name")
  /// ````
  LiveMessage call({
    Object? id = const $CopyWithPlaceholder(),
    Object? liveId = const $CopyWithPlaceholder(),
    Object? senderId = const $CopyWithPlaceholder(),
    Object? type = const $CopyWithPlaceholder(),
    Object? content = const $CopyWithPlaceholder(),
    Object? createdAt = const $CopyWithPlaceholder(),
    Object? sender = const $CopyWithPlaceholder(),
  }) {
    return LiveMessage(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int,
      liveId: liveId == const $CopyWithPlaceholder()
          ? _value.liveId
          // ignore: cast_nullable_to_non_nullable
          : liveId as int,
      senderId: senderId == const $CopyWithPlaceholder()
          ? _value.senderId
          // ignore: cast_nullable_to_non_nullable
          : senderId as int,
      type: type == const $CopyWithPlaceholder()
          ? _value.type
          // ignore: cast_nullable_to_non_nullable
          : type as LiveMessageTypeEnum,
      content: content == const $CopyWithPlaceholder()
          ? _value.content
          // ignore: cast_nullable_to_non_nullable
          : content as String,
      createdAt: createdAt == const $CopyWithPlaceholder()
          ? _value.createdAt
          // ignore: cast_nullable_to_non_nullable
          : createdAt as DateTime,
      sender: sender == const $CopyWithPlaceholder()
          ? _value.sender
          // ignore: cast_nullable_to_non_nullable
          : sender as Object?,
    );
  }
}

extension $LiveMessageCopyWith on LiveMessage {
  /// Returns a callable class that can be used as follows: `instanceOfLiveMessage.copyWith(...)` or like so:`instanceOfLiveMessage.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$LiveMessageCWProxy get copyWith => _$LiveMessageCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LiveMessage _$LiveMessageFromJson(Map<String, dynamic> json) =>
    $checkedCreate('LiveMessage', json, ($checkedConvert) {
      $checkKeys(
        json,
        requiredKeys: const [
          'id',
          'liveId',
          'senderId',
          'type',
          'content',
          'createdAt',
        ],
      );
      final val = LiveMessage(
        id: $checkedConvert('id', (v) => (v as num).toInt()),
        liveId: $checkedConvert('liveId', (v) => (v as num).toInt()),
        senderId: $checkedConvert('senderId', (v) => (v as num).toInt()),
        type: $checkedConvert(
          'type',
          (v) => $enumDecode(_$LiveMessageTypeEnumEnumMap, v),
        ),
        content: $checkedConvert('content', (v) => v as String),
        createdAt: $checkedConvert(
          'createdAt',
          (v) => DateTime.parse(v as String),
        ),
        sender: $checkedConvert('sender', (v) => v),
      );
      return val;
    });

Map<String, dynamic> _$LiveMessageToJson(LiveMessage instance) =>
    <String, dynamic>{
      'id': instance.id,
      'liveId': instance.liveId,
      'senderId': instance.senderId,
      'type': _$LiveMessageTypeEnumEnumMap[instance.type]!,
      'content': instance.content,
      'createdAt': instance.createdAt.toIso8601String(),
      'sender': ?instance.sender,
    };

const _$LiveMessageTypeEnumEnumMap = {
  LiveMessageTypeEnum.CHAT: 'CHAT',
  LiveMessageTypeEnum.QA: 'QA',
};
