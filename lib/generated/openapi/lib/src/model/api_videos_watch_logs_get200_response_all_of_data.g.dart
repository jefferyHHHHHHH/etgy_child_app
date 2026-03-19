// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_videos_watch_logs_get200_response_all_of_data.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ApiVideosWatchLogsGet200ResponseAllOfDataCWProxy {
  ApiVideosWatchLogsGet200ResponseAllOfData page(int page);

  ApiVideosWatchLogsGet200ResponseAllOfData pageSize(int pageSize);

  ApiVideosWatchLogsGet200ResponseAllOfData total(int total);

  ApiVideosWatchLogsGet200ResponseAllOfData items(List<VideoWatchLog> items);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiVideosWatchLogsGet200ResponseAllOfData(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiVideosWatchLogsGet200ResponseAllOfData(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiVideosWatchLogsGet200ResponseAllOfData call({
    int page,
    int pageSize,
    int total,
    List<VideoWatchLog> items,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfApiVideosWatchLogsGet200ResponseAllOfData.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfApiVideosWatchLogsGet200ResponseAllOfData.copyWith.fieldName(...)`
class _$ApiVideosWatchLogsGet200ResponseAllOfDataCWProxyImpl
    implements _$ApiVideosWatchLogsGet200ResponseAllOfDataCWProxy {
  const _$ApiVideosWatchLogsGet200ResponseAllOfDataCWProxyImpl(this._value);

  final ApiVideosWatchLogsGet200ResponseAllOfData _value;

  @override
  ApiVideosWatchLogsGet200ResponseAllOfData page(int page) => this(page: page);

  @override
  ApiVideosWatchLogsGet200ResponseAllOfData pageSize(int pageSize) =>
      this(pageSize: pageSize);

  @override
  ApiVideosWatchLogsGet200ResponseAllOfData total(int total) =>
      this(total: total);

  @override
  ApiVideosWatchLogsGet200ResponseAllOfData items(List<VideoWatchLog> items) =>
      this(items: items);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiVideosWatchLogsGet200ResponseAllOfData(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiVideosWatchLogsGet200ResponseAllOfData(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiVideosWatchLogsGet200ResponseAllOfData call({
    Object? page = const $CopyWithPlaceholder(),
    Object? pageSize = const $CopyWithPlaceholder(),
    Object? total = const $CopyWithPlaceholder(),
    Object? items = const $CopyWithPlaceholder(),
  }) {
    return ApiVideosWatchLogsGet200ResponseAllOfData(
      page: page == const $CopyWithPlaceholder()
          ? _value.page
          // ignore: cast_nullable_to_non_nullable
          : page as int,
      pageSize: pageSize == const $CopyWithPlaceholder()
          ? _value.pageSize
          // ignore: cast_nullable_to_non_nullable
          : pageSize as int,
      total: total == const $CopyWithPlaceholder()
          ? _value.total
          // ignore: cast_nullable_to_non_nullable
          : total as int,
      items: items == const $CopyWithPlaceholder()
          ? _value.items
          // ignore: cast_nullable_to_non_nullable
          : items as List<VideoWatchLog>,
    );
  }
}

extension $ApiVideosWatchLogsGet200ResponseAllOfDataCopyWith
    on ApiVideosWatchLogsGet200ResponseAllOfData {
  /// Returns a callable class that can be used as follows: `instanceOfApiVideosWatchLogsGet200ResponseAllOfData.copyWith(...)` or like so:`instanceOfApiVideosWatchLogsGet200ResponseAllOfData.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ApiVideosWatchLogsGet200ResponseAllOfDataCWProxy get copyWith =>
      _$ApiVideosWatchLogsGet200ResponseAllOfDataCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiVideosWatchLogsGet200ResponseAllOfData
_$ApiVideosWatchLogsGet200ResponseAllOfDataFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ApiVideosWatchLogsGet200ResponseAllOfData', json, (
  $checkedConvert,
) {
  $checkKeys(json, requiredKeys: const ['page', 'pageSize', 'total', 'items']);
  final val = ApiVideosWatchLogsGet200ResponseAllOfData(
    page: $checkedConvert('page', (v) => (v as num).toInt()),
    pageSize: $checkedConvert('pageSize', (v) => (v as num).toInt()),
    total: $checkedConvert('total', (v) => (v as num).toInt()),
    items: $checkedConvert(
      'items',
      (v) => (v as List<dynamic>)
          .map((e) => VideoWatchLog.fromJson(e as Map<String, dynamic>))
          .toList(),
    ),
  );
  return val;
});

Map<String, dynamic> _$ApiVideosWatchLogsGet200ResponseAllOfDataToJson(
  ApiVideosWatchLogsGet200ResponseAllOfData instance,
) => <String, dynamic>{
  'page': instance.page,
  'pageSize': instance.pageSize,
  'total': instance.total,
  'items': instance.items.map((e) => e.toJson()).toList(),
};
