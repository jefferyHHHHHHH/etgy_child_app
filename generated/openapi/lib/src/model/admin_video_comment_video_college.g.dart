// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_video_comment_video_college.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$AdminVideoCommentVideoCollegeCWProxy {
  AdminVideoCommentVideoCollege id(int id);

  AdminVideoCommentVideoCollege name(String name);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `AdminVideoCommentVideoCollege(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// AdminVideoCommentVideoCollege(...).copyWith(id: 12, name: "My name")
  /// ````
  AdminVideoCommentVideoCollege call({int id, String name});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfAdminVideoCommentVideoCollege.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfAdminVideoCommentVideoCollege.copyWith.fieldName(...)`
class _$AdminVideoCommentVideoCollegeCWProxyImpl
    implements _$AdminVideoCommentVideoCollegeCWProxy {
  const _$AdminVideoCommentVideoCollegeCWProxyImpl(this._value);

  final AdminVideoCommentVideoCollege _value;

  @override
  AdminVideoCommentVideoCollege id(int id) => this(id: id);

  @override
  AdminVideoCommentVideoCollege name(String name) => this(name: name);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `AdminVideoCommentVideoCollege(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// AdminVideoCommentVideoCollege(...).copyWith(id: 12, name: "My name")
  /// ````
  AdminVideoCommentVideoCollege call({
    Object? id = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
  }) {
    return AdminVideoCommentVideoCollege(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int,
      name: name == const $CopyWithPlaceholder()
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String,
    );
  }
}

extension $AdminVideoCommentVideoCollegeCopyWith
    on AdminVideoCommentVideoCollege {
  /// Returns a callable class that can be used as follows: `instanceOfAdminVideoCommentVideoCollege.copyWith(...)` or like so:`instanceOfAdminVideoCommentVideoCollege.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$AdminVideoCommentVideoCollegeCWProxy get copyWith =>
      _$AdminVideoCommentVideoCollegeCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AdminVideoCommentVideoCollege _$AdminVideoCommentVideoCollegeFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('AdminVideoCommentVideoCollege', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['id', 'name']);
  final val = AdminVideoCommentVideoCollege(
    id: $checkedConvert('id', (v) => (v as num).toInt()),
    name: $checkedConvert('name', (v) => v as String),
  );
  return val;
});

Map<String, dynamic> _$AdminVideoCommentVideoCollegeToJson(
  AdminVideoCommentVideoCollege instance,
) => <String, dynamic>{'id': instance.id, 'name': instance.name};
