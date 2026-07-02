// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_video_comment_paged_result.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$AdminVideoCommentPagedResultCWProxy {
  AdminVideoCommentPagedResult items(List<AdminVideoCommentItem> items);

  AdminVideoCommentPagedResult total(int total);

  AdminVideoCommentPagedResult page(int page);

  AdminVideoCommentPagedResult pageSize(int pageSize);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `AdminVideoCommentPagedResult(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// AdminVideoCommentPagedResult(...).copyWith(id: 12, name: "My name")
  /// ````
  AdminVideoCommentPagedResult call({
    List<AdminVideoCommentItem> items,
    int total,
    int page,
    int pageSize,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfAdminVideoCommentPagedResult.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfAdminVideoCommentPagedResult.copyWith.fieldName(...)`
class _$AdminVideoCommentPagedResultCWProxyImpl
    implements _$AdminVideoCommentPagedResultCWProxy {
  const _$AdminVideoCommentPagedResultCWProxyImpl(this._value);

  final AdminVideoCommentPagedResult _value;

  @override
  AdminVideoCommentPagedResult items(List<AdminVideoCommentItem> items) =>
      this(items: items);

  @override
  AdminVideoCommentPagedResult total(int total) => this(total: total);

  @override
  AdminVideoCommentPagedResult page(int page) => this(page: page);

  @override
  AdminVideoCommentPagedResult pageSize(int pageSize) =>
      this(pageSize: pageSize);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `AdminVideoCommentPagedResult(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// AdminVideoCommentPagedResult(...).copyWith(id: 12, name: "My name")
  /// ````
  AdminVideoCommentPagedResult call({
    Object? items = const $CopyWithPlaceholder(),
    Object? total = const $CopyWithPlaceholder(),
    Object? page = const $CopyWithPlaceholder(),
    Object? pageSize = const $CopyWithPlaceholder(),
  }) {
    return AdminVideoCommentPagedResult(
      items: items == const $CopyWithPlaceholder()
          ? _value.items
          // ignore: cast_nullable_to_non_nullable
          : items as List<AdminVideoCommentItem>,
      total: total == const $CopyWithPlaceholder()
          ? _value.total
          // ignore: cast_nullable_to_non_nullable
          : total as int,
      page: page == const $CopyWithPlaceholder()
          ? _value.page
          // ignore: cast_nullable_to_non_nullable
          : page as int,
      pageSize: pageSize == const $CopyWithPlaceholder()
          ? _value.pageSize
          // ignore: cast_nullable_to_non_nullable
          : pageSize as int,
    );
  }
}

extension $AdminVideoCommentPagedResultCopyWith
    on AdminVideoCommentPagedResult {
  /// Returns a callable class that can be used as follows: `instanceOfAdminVideoCommentPagedResult.copyWith(...)` or like so:`instanceOfAdminVideoCommentPagedResult.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$AdminVideoCommentPagedResultCWProxy get copyWith =>
      _$AdminVideoCommentPagedResultCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AdminVideoCommentPagedResult _$AdminVideoCommentPagedResultFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('AdminVideoCommentPagedResult', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['items', 'total', 'page', 'pageSize']);
  final val = AdminVideoCommentPagedResult(
    items: $checkedConvert(
      'items',
      (v) => (v as List<dynamic>)
          .map((e) => AdminVideoCommentItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    ),
    total: $checkedConvert('total', (v) => (v as num).toInt()),
    page: $checkedConvert('page', (v) => (v as num).toInt()),
    pageSize: $checkedConvert('pageSize', (v) => (v as num).toInt()),
  );
  return val;
});

Map<String, dynamic> _$AdminVideoCommentPagedResultToJson(
  AdminVideoCommentPagedResult instance,
) => <String, dynamic>{
  'items': instance.items.map((e) => e.toJson()).toList(),
  'total': instance.total,
  'page': instance.page,
  'pageSize': instance.pageSize,
};
