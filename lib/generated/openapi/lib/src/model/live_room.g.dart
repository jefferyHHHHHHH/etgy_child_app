// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'live_room.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$LiveRoomCWProxy {
  LiveRoom id(int id);

  LiveRoom title(String title);

  LiveRoom intro(String? intro);

  LiveRoom planStartTime(DateTime planStartTime);

  LiveRoom planEndTime(DateTime planEndTime);

  LiveRoom actualStart(DateTime? actualStart);

  LiveRoom actualEnd(DateTime? actualEnd);

  LiveRoom status(LiveRoomStatusEnum status);

  LiveRoom rejectReason(String? rejectReason);

  LiveRoom reviewedBy(int? reviewedBy);

  LiveRoom reviewedAt(DateTime? reviewedAt);

  LiveRoom publishedBy(int? publishedBy);

  LiveRoom publishedAt(DateTime? publishedAt);

  LiveRoom offlineBy(int? offlineBy);

  LiveRoom offlineAt(DateTime? offlineAt);

  LiveRoom offlineReason(String? offlineReason);

  LiveRoom pushUrl(String? pushUrl);

  LiveRoom pullUrl(String? pullUrl);

  LiveRoom replayVideoId(int? replayVideoId);

  LiveRoom anchorId(int anchorId);

  LiveRoom collegeId(int collegeId);

  LiveRoom anchor(Object? anchor);

  LiveRoom college(Object? college);

  LiveRoom createdAt(DateTime? createdAt);

  LiveRoom updatedAt(DateTime? updatedAt);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `LiveRoom(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// LiveRoom(...).copyWith(id: 12, name: "My name")
  /// ````
  LiveRoom call({
    int id,
    String title,
    String? intro,
    DateTime planStartTime,
    DateTime planEndTime,
    DateTime? actualStart,
    DateTime? actualEnd,
    LiveRoomStatusEnum status,
    String? rejectReason,
    int? reviewedBy,
    DateTime? reviewedAt,
    int? publishedBy,
    DateTime? publishedAt,
    int? offlineBy,
    DateTime? offlineAt,
    String? offlineReason,
    String? pushUrl,
    String? pullUrl,
    int? replayVideoId,
    int anchorId,
    int collegeId,
    Object? anchor,
    Object? college,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfLiveRoom.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfLiveRoom.copyWith.fieldName(...)`
class _$LiveRoomCWProxyImpl implements _$LiveRoomCWProxy {
  const _$LiveRoomCWProxyImpl(this._value);

  final LiveRoom _value;

  @override
  LiveRoom id(int id) => this(id: id);

  @override
  LiveRoom title(String title) => this(title: title);

  @override
  LiveRoom intro(String? intro) => this(intro: intro);

  @override
  LiveRoom planStartTime(DateTime planStartTime) =>
      this(planStartTime: planStartTime);

  @override
  LiveRoom planEndTime(DateTime planEndTime) => this(planEndTime: planEndTime);

  @override
  LiveRoom actualStart(DateTime? actualStart) => this(actualStart: actualStart);

  @override
  LiveRoom actualEnd(DateTime? actualEnd) => this(actualEnd: actualEnd);

  @override
  LiveRoom status(LiveRoomStatusEnum status) => this(status: status);

  @override
  LiveRoom rejectReason(String? rejectReason) =>
      this(rejectReason: rejectReason);

  @override
  LiveRoom reviewedBy(int? reviewedBy) => this(reviewedBy: reviewedBy);

  @override
  LiveRoom reviewedAt(DateTime? reviewedAt) => this(reviewedAt: reviewedAt);

  @override
  LiveRoom publishedBy(int? publishedBy) => this(publishedBy: publishedBy);

  @override
  LiveRoom publishedAt(DateTime? publishedAt) => this(publishedAt: publishedAt);

  @override
  LiveRoom offlineBy(int? offlineBy) => this(offlineBy: offlineBy);

  @override
  LiveRoom offlineAt(DateTime? offlineAt) => this(offlineAt: offlineAt);

  @override
  LiveRoom offlineReason(String? offlineReason) =>
      this(offlineReason: offlineReason);

  @override
  LiveRoom pushUrl(String? pushUrl) => this(pushUrl: pushUrl);

  @override
  LiveRoom pullUrl(String? pullUrl) => this(pullUrl: pullUrl);

  @override
  LiveRoom replayVideoId(int? replayVideoId) =>
      this(replayVideoId: replayVideoId);

  @override
  LiveRoom anchorId(int anchorId) => this(anchorId: anchorId);

  @override
  LiveRoom collegeId(int collegeId) => this(collegeId: collegeId);

  @override
  LiveRoom anchor(Object? anchor) => this(anchor: anchor);

  @override
  LiveRoom college(Object? college) => this(college: college);

  @override
  LiveRoom createdAt(DateTime? createdAt) => this(createdAt: createdAt);

  @override
  LiveRoom updatedAt(DateTime? updatedAt) => this(updatedAt: updatedAt);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `LiveRoom(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// LiveRoom(...).copyWith(id: 12, name: "My name")
  /// ````
  LiveRoom call({
    Object? id = const $CopyWithPlaceholder(),
    Object? title = const $CopyWithPlaceholder(),
    Object? intro = const $CopyWithPlaceholder(),
    Object? planStartTime = const $CopyWithPlaceholder(),
    Object? planEndTime = const $CopyWithPlaceholder(),
    Object? actualStart = const $CopyWithPlaceholder(),
    Object? actualEnd = const $CopyWithPlaceholder(),
    Object? status = const $CopyWithPlaceholder(),
    Object? rejectReason = const $CopyWithPlaceholder(),
    Object? reviewedBy = const $CopyWithPlaceholder(),
    Object? reviewedAt = const $CopyWithPlaceholder(),
    Object? publishedBy = const $CopyWithPlaceholder(),
    Object? publishedAt = const $CopyWithPlaceholder(),
    Object? offlineBy = const $CopyWithPlaceholder(),
    Object? offlineAt = const $CopyWithPlaceholder(),
    Object? offlineReason = const $CopyWithPlaceholder(),
    Object? pushUrl = const $CopyWithPlaceholder(),
    Object? pullUrl = const $CopyWithPlaceholder(),
    Object? replayVideoId = const $CopyWithPlaceholder(),
    Object? anchorId = const $CopyWithPlaceholder(),
    Object? collegeId = const $CopyWithPlaceholder(),
    Object? anchor = const $CopyWithPlaceholder(),
    Object? college = const $CopyWithPlaceholder(),
    Object? createdAt = const $CopyWithPlaceholder(),
    Object? updatedAt = const $CopyWithPlaceholder(),
  }) {
    return LiveRoom(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int,
      title: title == const $CopyWithPlaceholder()
          ? _value.title
          // ignore: cast_nullable_to_non_nullable
          : title as String,
      intro: intro == const $CopyWithPlaceholder()
          ? _value.intro
          // ignore: cast_nullable_to_non_nullable
          : intro as String?,
      planStartTime: planStartTime == const $CopyWithPlaceholder()
          ? _value.planStartTime
          // ignore: cast_nullable_to_non_nullable
          : planStartTime as DateTime,
      planEndTime: planEndTime == const $CopyWithPlaceholder()
          ? _value.planEndTime
          // ignore: cast_nullable_to_non_nullable
          : planEndTime as DateTime,
      actualStart: actualStart == const $CopyWithPlaceholder()
          ? _value.actualStart
          // ignore: cast_nullable_to_non_nullable
          : actualStart as DateTime?,
      actualEnd: actualEnd == const $CopyWithPlaceholder()
          ? _value.actualEnd
          // ignore: cast_nullable_to_non_nullable
          : actualEnd as DateTime?,
      status: status == const $CopyWithPlaceholder()
          ? _value.status
          // ignore: cast_nullable_to_non_nullable
          : status as LiveRoomStatusEnum,
      rejectReason: rejectReason == const $CopyWithPlaceholder()
          ? _value.rejectReason
          // ignore: cast_nullable_to_non_nullable
          : rejectReason as String?,
      reviewedBy: reviewedBy == const $CopyWithPlaceholder()
          ? _value.reviewedBy
          // ignore: cast_nullable_to_non_nullable
          : reviewedBy as int?,
      reviewedAt: reviewedAt == const $CopyWithPlaceholder()
          ? _value.reviewedAt
          // ignore: cast_nullable_to_non_nullable
          : reviewedAt as DateTime?,
      publishedBy: publishedBy == const $CopyWithPlaceholder()
          ? _value.publishedBy
          // ignore: cast_nullable_to_non_nullable
          : publishedBy as int?,
      publishedAt: publishedAt == const $CopyWithPlaceholder()
          ? _value.publishedAt
          // ignore: cast_nullable_to_non_nullable
          : publishedAt as DateTime?,
      offlineBy: offlineBy == const $CopyWithPlaceholder()
          ? _value.offlineBy
          // ignore: cast_nullable_to_non_nullable
          : offlineBy as int?,
      offlineAt: offlineAt == const $CopyWithPlaceholder()
          ? _value.offlineAt
          // ignore: cast_nullable_to_non_nullable
          : offlineAt as DateTime?,
      offlineReason: offlineReason == const $CopyWithPlaceholder()
          ? _value.offlineReason
          // ignore: cast_nullable_to_non_nullable
          : offlineReason as String?,
      pushUrl: pushUrl == const $CopyWithPlaceholder()
          ? _value.pushUrl
          // ignore: cast_nullable_to_non_nullable
          : pushUrl as String?,
      pullUrl: pullUrl == const $CopyWithPlaceholder()
          ? _value.pullUrl
          // ignore: cast_nullable_to_non_nullable
          : pullUrl as String?,
      replayVideoId: replayVideoId == const $CopyWithPlaceholder()
          ? _value.replayVideoId
          // ignore: cast_nullable_to_non_nullable
          : replayVideoId as int?,
      anchorId: anchorId == const $CopyWithPlaceholder()
          ? _value.anchorId
          // ignore: cast_nullable_to_non_nullable
          : anchorId as int,
      collegeId: collegeId == const $CopyWithPlaceholder()
          ? _value.collegeId
          // ignore: cast_nullable_to_non_nullable
          : collegeId as int,
      anchor: anchor == const $CopyWithPlaceholder()
          ? _value.anchor
          // ignore: cast_nullable_to_non_nullable
          : anchor as Object?,
      college: college == const $CopyWithPlaceholder()
          ? _value.college
          // ignore: cast_nullable_to_non_nullable
          : college as Object?,
      createdAt: createdAt == const $CopyWithPlaceholder()
          ? _value.createdAt
          // ignore: cast_nullable_to_non_nullable
          : createdAt as DateTime?,
      updatedAt: updatedAt == const $CopyWithPlaceholder()
          ? _value.updatedAt
          // ignore: cast_nullable_to_non_nullable
          : updatedAt as DateTime?,
    );
  }
}

extension $LiveRoomCopyWith on LiveRoom {
  /// Returns a callable class that can be used as follows: `instanceOfLiveRoom.copyWith(...)` or like so:`instanceOfLiveRoom.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$LiveRoomCWProxy get copyWith => _$LiveRoomCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LiveRoom _$LiveRoomFromJson(Map<String, dynamic> json) => $checkedCreate(
  'LiveRoom',
  json,
  ($checkedConvert) {
    $checkKeys(
      json,
      requiredKeys: const [
        'id',
        'title',
        'planStartTime',
        'planEndTime',
        'status',
        'anchorId',
        'collegeId',
      ],
    );
    final val = LiveRoom(
      id: $checkedConvert('id', (v) => (v as num).toInt()),
      title: $checkedConvert('title', (v) => v as String),
      intro: $checkedConvert('intro', (v) => v as String?),
      planStartTime: $checkedConvert(
        'planStartTime',
        (v) => DateTime.parse(v as String),
      ),
      planEndTime: $checkedConvert(
        'planEndTime',
        (v) => DateTime.parse(v as String),
      ),
      actualStart: $checkedConvert(
        'actualStart',
        (v) => v == null ? null : DateTime.parse(v as String),
      ),
      actualEnd: $checkedConvert(
        'actualEnd',
        (v) => v == null ? null : DateTime.parse(v as String),
      ),
      status: $checkedConvert(
        'status',
        (v) => $enumDecode(_$LiveRoomStatusEnumEnumMap, v),
      ),
      rejectReason: $checkedConvert('rejectReason', (v) => v as String?),
      reviewedBy: $checkedConvert('reviewedBy', (v) => (v as num?)?.toInt()),
      reviewedAt: $checkedConvert(
        'reviewedAt',
        (v) => v == null ? null : DateTime.parse(v as String),
      ),
      publishedBy: $checkedConvert('publishedBy', (v) => (v as num?)?.toInt()),
      publishedAt: $checkedConvert(
        'publishedAt',
        (v) => v == null ? null : DateTime.parse(v as String),
      ),
      offlineBy: $checkedConvert('offlineBy', (v) => (v as num?)?.toInt()),
      offlineAt: $checkedConvert(
        'offlineAt',
        (v) => v == null ? null : DateTime.parse(v as String),
      ),
      offlineReason: $checkedConvert('offlineReason', (v) => v as String?),
      pushUrl: $checkedConvert('pushUrl', (v) => v as String?),
      pullUrl: $checkedConvert('pullUrl', (v) => v as String?),
      replayVideoId: $checkedConvert(
        'replayVideoId',
        (v) => (v as num?)?.toInt(),
      ),
      anchorId: $checkedConvert('anchorId', (v) => (v as num).toInt()),
      collegeId: $checkedConvert('collegeId', (v) => (v as num).toInt()),
      anchor: $checkedConvert('anchor', (v) => v),
      college: $checkedConvert('college', (v) => v),
      createdAt: $checkedConvert(
        'createdAt',
        (v) => v == null ? null : DateTime.parse(v as String),
      ),
      updatedAt: $checkedConvert(
        'updatedAt',
        (v) => v == null ? null : DateTime.parse(v as String),
      ),
    );
    return val;
  },
);

Map<String, dynamic> _$LiveRoomToJson(LiveRoom instance) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'intro': ?instance.intro,
  'planStartTime': instance.planStartTime.toIso8601String(),
  'planEndTime': instance.planEndTime.toIso8601String(),
  'actualStart': ?instance.actualStart?.toIso8601String(),
  'actualEnd': ?instance.actualEnd?.toIso8601String(),
  'status': _$LiveRoomStatusEnumEnumMap[instance.status]!,
  'rejectReason': ?instance.rejectReason,
  'reviewedBy': ?instance.reviewedBy,
  'reviewedAt': ?instance.reviewedAt?.toIso8601String(),
  'publishedBy': ?instance.publishedBy,
  'publishedAt': ?instance.publishedAt?.toIso8601String(),
  'offlineBy': ?instance.offlineBy,
  'offlineAt': ?instance.offlineAt?.toIso8601String(),
  'offlineReason': ?instance.offlineReason,
  'pushUrl': ?instance.pushUrl,
  'pullUrl': ?instance.pullUrl,
  'replayVideoId': ?instance.replayVideoId,
  'anchorId': instance.anchorId,
  'collegeId': instance.collegeId,
  'anchor': ?instance.anchor,
  'college': ?instance.college,
  'createdAt': ?instance.createdAt?.toIso8601String(),
  'updatedAt': ?instance.updatedAt?.toIso8601String(),
};

const _$LiveRoomStatusEnumEnumMap = {
  LiveRoomStatusEnum.DRAFT: 'DRAFT',
  LiveRoomStatusEnum.REVIEW: 'REVIEW',
  LiveRoomStatusEnum.PASSED: 'PASSED',
  LiveRoomStatusEnum.PUBLISHED: 'PUBLISHED',
  LiveRoomStatusEnum.REJECTED: 'REJECTED',
  LiveRoomStatusEnum.LIVING: 'LIVING',
  LiveRoomStatusEnum.FINISHED: 'FINISHED',
  LiveRoomStatusEnum.OFFLINE: 'OFFLINE',
};
