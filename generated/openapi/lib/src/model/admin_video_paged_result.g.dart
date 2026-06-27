// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_video_paged_result.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$AdminVideoPagedResultCWProxy {
  AdminVideoPagedResult items(List<AdminVideoItem> items);

  AdminVideoPagedResult total(int total);

  AdminVideoPagedResult page(int page);

  AdminVideoPagedResult pageSize(int pageSize);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `AdminVideoPagedResult(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// AdminVideoPagedResult(...).copyWith(id: 12, name: "My name")
  /// ````
  AdminVideoPagedResult call({
    List<AdminVideoItem> items,
    int total,
    int page,
    int pageSize,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfAdminVideoPagedResult.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfAdminVideoPagedResult.copyWith.fieldName(...)`
class _$AdminVideoPagedResultCWProxyImpl
    implements _$AdminVideoPagedResultCWProxy {
  const _$AdminVideoPagedResultCWProxyImpl(this._value);

  final AdminVideoPagedResult _value;

  @override
  AdminVideoPagedResult items(List<AdminVideoItem> items) => this(items: items);

  @override
  AdminVideoPagedResult total(int total) => this(total: total);

  @override
  AdminVideoPagedResult page(int page) => this(page: page);

  @override
  AdminVideoPagedResult pageSize(int pageSize) => this(pageSize: pageSize);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `AdminVideoPagedResult(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// AdminVideoPagedResult(...).copyWith(id: 12, name: "My name")
  /// ````
  AdminVideoPagedResult call({
    Object? items = const $CopyWithPlaceholder(),
    Object? total = const $CopyWithPlaceholder(),
    Object? page = const $CopyWithPlaceholder(),
    Object? pageSize = const $CopyWithPlaceholder(),
  }) {
    return AdminVideoPagedResult(
      items: items == const $CopyWithPlaceholder()
          ? _value.items
          // ignore: cast_nullable_to_non_nullable
          : items as List<AdminVideoItem>,
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

extension $AdminVideoPagedResultCopyWith on AdminVideoPagedResult {
  /// Returns a callable class that can be used as follows: `instanceOfAdminVideoPagedResult.copyWith(...)` or like so:`instanceOfAdminVideoPagedResult.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$AdminVideoPagedResultCWProxy get copyWith =>
      _$AdminVideoPagedResultCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AdminVideoPagedResult _$AdminVideoPagedResultFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('AdminVideoPagedResult', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['items', 'total', 'page', 'pageSize']);
  final val = AdminVideoPagedResult(
    items: $checkedConvert(
      'items',
      (v) => (v as List<dynamic>)
          .map((e) => AdminVideoItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    ),
    total: $checkedConvert('total', (v) => (v as num).toInt()),
    page: $checkedConvert('page', (v) => (v as num).toInt()),
    pageSize: $checkedConvert('pageSize', (v) => (v as num).toInt()),
  );
  return val;
});

Map<String, dynamic> _$AdminVideoPagedResultToJson(
  AdminVideoPagedResult instance,
) => <String, dynamic>{
  'items': instance.items.map((e) => e.toJson()).toList(),
  'total': instance.total,
  'page': instance.page,
  'pageSize': instance.pageSize,
};
