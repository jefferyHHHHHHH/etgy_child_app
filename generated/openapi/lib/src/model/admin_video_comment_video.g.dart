// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_video_comment_video.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$AdminVideoCommentVideoCWProxy {
  AdminVideoCommentVideo id(int id);

  AdminVideoCommentVideo title(String title);

  AdminVideoCommentVideo collegeId(int collegeId);

  AdminVideoCommentVideo college(AdminVideoCommentVideoCollege? college);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `AdminVideoCommentVideo(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// AdminVideoCommentVideo(...).copyWith(id: 12, name: "My name")
  /// ````
  AdminVideoCommentVideo call({
    int id,
    String title,
    int collegeId,
    AdminVideoCommentVideoCollege? college,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfAdminVideoCommentVideo.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfAdminVideoCommentVideo.copyWith.fieldName(...)`
class _$AdminVideoCommentVideoCWProxyImpl
    implements _$AdminVideoCommentVideoCWProxy {
  const _$AdminVideoCommentVideoCWProxyImpl(this._value);

  final AdminVideoCommentVideo _value;

  @override
  AdminVideoCommentVideo id(int id) => this(id: id);

  @override
  AdminVideoCommentVideo title(String title) => this(title: title);

  @override
  AdminVideoCommentVideo collegeId(int collegeId) => this(collegeId: collegeId);

  @override
  AdminVideoCommentVideo college(AdminVideoCommentVideoCollege? college) =>
      this(college: college);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `AdminVideoCommentVideo(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// AdminVideoCommentVideo(...).copyWith(id: 12, name: "My name")
  /// ````
  AdminVideoCommentVideo call({
    Object? id = const $CopyWithPlaceholder(),
    Object? title = const $CopyWithPlaceholder(),
    Object? collegeId = const $CopyWithPlaceholder(),
    Object? college = const $CopyWithPlaceholder(),
  }) {
    return AdminVideoCommentVideo(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int,
      title: title == const $CopyWithPlaceholder()
          ? _value.title
          // ignore: cast_nullable_to_non_nullable
          : title as String,
      collegeId: collegeId == const $CopyWithPlaceholder()
          ? _value.collegeId
          // ignore: cast_nullable_to_non_nullable
          : collegeId as int,
      college: college == const $CopyWithPlaceholder()
          ? _value.college
          // ignore: cast_nullable_to_non_nullable
          : college as AdminVideoCommentVideoCollege?,
    );
  }
}

extension $AdminVideoCommentVideoCopyWith on AdminVideoCommentVideo {
  /// Returns a callable class that can be used as follows: `instanceOfAdminVideoCommentVideo.copyWith(...)` or like so:`instanceOfAdminVideoCommentVideo.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$AdminVideoCommentVideoCWProxy get copyWith =>
      _$AdminVideoCommentVideoCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AdminVideoCommentVideo _$AdminVideoCommentVideoFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('AdminVideoCommentVideo', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['id', 'title', 'collegeId']);
  final val = AdminVideoCommentVideo(
    id: $checkedConvert('id', (v) => (v as num).toInt()),
    title: $checkedConvert('title', (v) => v as String),
    collegeId: $checkedConvert('collegeId', (v) => (v as num).toInt()),
    college: $checkedConvert(
      'college',
      (v) => v == null
          ? null
          : AdminVideoCommentVideoCollege.fromJson(v as Map<String, dynamic>),
    ),
  );
  return val;
});

Map<String, dynamic> _$AdminVideoCommentVideoToJson(
  AdminVideoCommentVideo instance,
) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'collegeId': instance.collegeId,
  'college': ?instance.college?.toJson(),
};
