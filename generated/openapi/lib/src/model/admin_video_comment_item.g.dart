// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_video_comment_item.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$AdminVideoCommentItemCWProxy {
  AdminVideoCommentItem id(int id);

  AdminVideoCommentItem videoId(int videoId);

  AdminVideoCommentItem authorId(int authorId);

  AdminVideoCommentItem content(String content);

  AdminVideoCommentItem status(AdminVideoCommentItemStatusEnum status);

  AdminVideoCommentItem rejectReason(String? rejectReason);

  AdminVideoCommentItem reviewedBy(int? reviewedBy);

  AdminVideoCommentItem reviewedAt(DateTime? reviewedAt);

  AdminVideoCommentItem createdAt(DateTime createdAt);

  AdminVideoCommentItem updatedAt(DateTime updatedAt);

  AdminVideoCommentItem author(Object? author);

  AdminVideoCommentItem video(AdminVideoCommentVideo video);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `AdminVideoCommentItem(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// AdminVideoCommentItem(...).copyWith(id: 12, name: "My name")
  /// ````
  AdminVideoCommentItem call({
    int id,
    int videoId,
    int authorId,
    String content,
    AdminVideoCommentItemStatusEnum status,
    String? rejectReason,
    int? reviewedBy,
    DateTime? reviewedAt,
    DateTime createdAt,
    DateTime updatedAt,
    Object? author,
    AdminVideoCommentVideo video,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfAdminVideoCommentItem.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfAdminVideoCommentItem.copyWith.fieldName(...)`
class _$AdminVideoCommentItemCWProxyImpl
    implements _$AdminVideoCommentItemCWProxy {
  const _$AdminVideoCommentItemCWProxyImpl(this._value);

  final AdminVideoCommentItem _value;

  @override
  AdminVideoCommentItem id(int id) => this(id: id);

  @override
  AdminVideoCommentItem videoId(int videoId) => this(videoId: videoId);

  @override
  AdminVideoCommentItem authorId(int authorId) => this(authorId: authorId);

  @override
  AdminVideoCommentItem content(String content) => this(content: content);

  @override
  AdminVideoCommentItem status(AdminVideoCommentItemStatusEnum status) =>
      this(status: status);

  @override
  AdminVideoCommentItem rejectReason(String? rejectReason) =>
      this(rejectReason: rejectReason);

  @override
  AdminVideoCommentItem reviewedBy(int? reviewedBy) =>
      this(reviewedBy: reviewedBy);

  @override
  AdminVideoCommentItem reviewedAt(DateTime? reviewedAt) =>
      this(reviewedAt: reviewedAt);

  @override
  AdminVideoCommentItem createdAt(DateTime createdAt) =>
      this(createdAt: createdAt);

  @override
  AdminVideoCommentItem updatedAt(DateTime updatedAt) =>
      this(updatedAt: updatedAt);

  @override
  AdminVideoCommentItem author(Object? author) => this(author: author);

  @override
  AdminVideoCommentItem video(AdminVideoCommentVideo video) =>
      this(video: video);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `AdminVideoCommentItem(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// AdminVideoCommentItem(...).copyWith(id: 12, name: "My name")
  /// ````
  AdminVideoCommentItem call({
    Object? id = const $CopyWithPlaceholder(),
    Object? videoId = const $CopyWithPlaceholder(),
    Object? authorId = const $CopyWithPlaceholder(),
    Object? content = const $CopyWithPlaceholder(),
    Object? status = const $CopyWithPlaceholder(),
    Object? rejectReason = const $CopyWithPlaceholder(),
    Object? reviewedBy = const $CopyWithPlaceholder(),
    Object? reviewedAt = const $CopyWithPlaceholder(),
    Object? createdAt = const $CopyWithPlaceholder(),
    Object? updatedAt = const $CopyWithPlaceholder(),
    Object? author = const $CopyWithPlaceholder(),
    Object? video = const $CopyWithPlaceholder(),
  }) {
    return AdminVideoCommentItem(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int,
      videoId: videoId == const $CopyWithPlaceholder()
          ? _value.videoId
          // ignore: cast_nullable_to_non_nullable
          : videoId as int,
      authorId: authorId == const $CopyWithPlaceholder()
          ? _value.authorId
          // ignore: cast_nullable_to_non_nullable
          : authorId as int,
      content: content == const $CopyWithPlaceholder()
          ? _value.content
          // ignore: cast_nullable_to_non_nullable
          : content as String,
      status: status == const $CopyWithPlaceholder()
          ? _value.status
          // ignore: cast_nullable_to_non_nullable
          : status as AdminVideoCommentItemStatusEnum,
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
      createdAt: createdAt == const $CopyWithPlaceholder()
          ? _value.createdAt
          // ignore: cast_nullable_to_non_nullable
          : createdAt as DateTime,
      updatedAt: updatedAt == const $CopyWithPlaceholder()
          ? _value.updatedAt
          // ignore: cast_nullable_to_non_nullable
          : updatedAt as DateTime,
      author: author == const $CopyWithPlaceholder()
          ? _value.author
          // ignore: cast_nullable_to_non_nullable
          : author as Object?,
      video: video == const $CopyWithPlaceholder()
          ? _value.video
          // ignore: cast_nullable_to_non_nullable
          : video as AdminVideoCommentVideo,
    );
  }
}

extension $AdminVideoCommentItemCopyWith on AdminVideoCommentItem {
  /// Returns a callable class that can be used as follows: `instanceOfAdminVideoCommentItem.copyWith(...)` or like so:`instanceOfAdminVideoCommentItem.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$AdminVideoCommentItemCWProxy get copyWith =>
      _$AdminVideoCommentItemCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AdminVideoCommentItem _$AdminVideoCommentItemFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('AdminVideoCommentItem', json, ($checkedConvert) {
  $checkKeys(
    json,
    requiredKeys: const [
      'id',
      'videoId',
      'authorId',
      'content',
      'status',
      'createdAt',
      'updatedAt',
      'video',
    ],
  );
  final val = AdminVideoCommentItem(
    id: $checkedConvert('id', (v) => (v as num).toInt()),
    videoId: $checkedConvert('videoId', (v) => (v as num).toInt()),
    authorId: $checkedConvert('authorId', (v) => (v as num).toInt()),
    content: $checkedConvert('content', (v) => v as String),
    status: $checkedConvert(
      'status',
      (v) => $enumDecode(_$AdminVideoCommentItemStatusEnumEnumMap, v),
    ),
    rejectReason: $checkedConvert('rejectReason', (v) => v as String?),
    reviewedBy: $checkedConvert('reviewedBy', (v) => (v as num?)?.toInt()),
    reviewedAt: $checkedConvert(
      'reviewedAt',
      (v) => v == null ? null : DateTime.parse(v as String),
    ),
    createdAt: $checkedConvert('createdAt', (v) => DateTime.parse(v as String)),
    updatedAt: $checkedConvert('updatedAt', (v) => DateTime.parse(v as String)),
    author: $checkedConvert('author', (v) => v),
    video: $checkedConvert(
      'video',
      (v) => AdminVideoCommentVideo.fromJson(v as Map<String, dynamic>),
    ),
  );
  return val;
});

Map<String, dynamic> _$AdminVideoCommentItemToJson(
  AdminVideoCommentItem instance,
) => <String, dynamic>{
  'id': instance.id,
  'videoId': instance.videoId,
  'authorId': instance.authorId,
  'content': instance.content,
  'status': _$AdminVideoCommentItemStatusEnumEnumMap[instance.status]!,
  'rejectReason': ?instance.rejectReason,
  'reviewedBy': ?instance.reviewedBy,
  'reviewedAt': ?instance.reviewedAt?.toIso8601String(),
  'createdAt': instance.createdAt.toIso8601String(),
  'updatedAt': instance.updatedAt.toIso8601String(),
  'author': ?instance.author,
  'video': instance.video.toJson(),
};

const _$AdminVideoCommentItemStatusEnumEnumMap = {
  AdminVideoCommentItemStatusEnum.PENDING: 'PENDING',
  AdminVideoCommentItemStatusEnum.APPROVED: 'APPROVED',
  AdminVideoCommentItemStatusEnum.REJECTED: 'REJECTED',
};
