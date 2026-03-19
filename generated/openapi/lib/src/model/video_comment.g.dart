// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_comment.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$VideoCommentCWProxy {
  VideoComment id(int id);

  VideoComment videoId(int videoId);

  VideoComment authorId(int authorId);

  VideoComment content(String content);

  VideoComment status(VideoCommentStatusEnum status);

  VideoComment rejectReason(String? rejectReason);

  VideoComment reviewedBy(int? reviewedBy);

  VideoComment reviewedAt(DateTime? reviewedAt);

  VideoComment createdAt(DateTime createdAt);

  VideoComment updatedAt(DateTime updatedAt);

  VideoComment author(Object? author);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `VideoComment(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// VideoComment(...).copyWith(id: 12, name: "My name")
  /// ````
  VideoComment call({
    int id,
    int videoId,
    int authorId,
    String content,
    VideoCommentStatusEnum status,
    String? rejectReason,
    int? reviewedBy,
    DateTime? reviewedAt,
    DateTime createdAt,
    DateTime updatedAt,
    Object? author,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfVideoComment.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfVideoComment.copyWith.fieldName(...)`
class _$VideoCommentCWProxyImpl implements _$VideoCommentCWProxy {
  const _$VideoCommentCWProxyImpl(this._value);

  final VideoComment _value;

  @override
  VideoComment id(int id) => this(id: id);

  @override
  VideoComment videoId(int videoId) => this(videoId: videoId);

  @override
  VideoComment authorId(int authorId) => this(authorId: authorId);

  @override
  VideoComment content(String content) => this(content: content);

  @override
  VideoComment status(VideoCommentStatusEnum status) => this(status: status);

  @override
  VideoComment rejectReason(String? rejectReason) =>
      this(rejectReason: rejectReason);

  @override
  VideoComment reviewedBy(int? reviewedBy) => this(reviewedBy: reviewedBy);

  @override
  VideoComment reviewedAt(DateTime? reviewedAt) => this(reviewedAt: reviewedAt);

  @override
  VideoComment createdAt(DateTime createdAt) => this(createdAt: createdAt);

  @override
  VideoComment updatedAt(DateTime updatedAt) => this(updatedAt: updatedAt);

  @override
  VideoComment author(Object? author) => this(author: author);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `VideoComment(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// VideoComment(...).copyWith(id: 12, name: "My name")
  /// ````
  VideoComment call({
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
  }) {
    return VideoComment(
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
          : status as VideoCommentStatusEnum,
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
    );
  }
}

extension $VideoCommentCopyWith on VideoComment {
  /// Returns a callable class that can be used as follows: `instanceOfVideoComment.copyWith(...)` or like so:`instanceOfVideoComment.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$VideoCommentCWProxy get copyWith => _$VideoCommentCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VideoComment _$VideoCommentFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('VideoComment', json, ($checkedConvert) {
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
    ],
  );
  final val = VideoComment(
    id: $checkedConvert('id', (v) => (v as num).toInt()),
    videoId: $checkedConvert('videoId', (v) => (v as num).toInt()),
    authorId: $checkedConvert('authorId', (v) => (v as num).toInt()),
    content: $checkedConvert('content', (v) => v as String),
    status: $checkedConvert(
      'status',
      (v) => $enumDecode(_$VideoCommentStatusEnumEnumMap, v),
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
  );
  return val;
});

Map<String, dynamic> _$VideoCommentToJson(VideoComment instance) =>
    <String, dynamic>{
      'id': instance.id,
      'videoId': instance.videoId,
      'authorId': instance.authorId,
      'content': instance.content,
      'status': _$VideoCommentStatusEnumEnumMap[instance.status]!,
      'rejectReason': ?instance.rejectReason,
      'reviewedBy': ?instance.reviewedBy,
      'reviewedAt': ?instance.reviewedAt?.toIso8601String(),
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'author': ?instance.author,
    };

const _$VideoCommentStatusEnumEnumMap = {
  VideoCommentStatusEnum.PENDING: 'PENDING',
  VideoCommentStatusEnum.APPROVED: 'APPROVED',
  VideoCommentStatusEnum.REJECTED: 'REJECTED',
};
