// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'live_room_paged_result.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$LiveRoomPagedResultCWProxy {
  LiveRoomPagedResult items(List<LiveRoom> items);

  LiveRoomPagedResult total(int total);

  LiveRoomPagedResult page(int page);

  LiveRoomPagedResult pageSize(int pageSize);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `LiveRoomPagedResult(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// LiveRoomPagedResult(...).copyWith(id: 12, name: "My name")
  /// ````
  LiveRoomPagedResult call({
    List<LiveRoom> items,
    int total,
    int page,
    int pageSize,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfLiveRoomPagedResult.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfLiveRoomPagedResult.copyWith.fieldName(...)`
class _$LiveRoomPagedResultCWProxyImpl implements _$LiveRoomPagedResultCWProxy {
  const _$LiveRoomPagedResultCWProxyImpl(this._value);

  final LiveRoomPagedResult _value;

  @override
  LiveRoomPagedResult items(List<LiveRoom> items) => this(items: items);

  @override
  LiveRoomPagedResult total(int total) => this(total: total);

  @override
  LiveRoomPagedResult page(int page) => this(page: page);

  @override
  LiveRoomPagedResult pageSize(int pageSize) => this(pageSize: pageSize);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `LiveRoomPagedResult(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// LiveRoomPagedResult(...).copyWith(id: 12, name: "My name")
  /// ````
  LiveRoomPagedResult call({
    Object? items = const $CopyWithPlaceholder(),
    Object? total = const $CopyWithPlaceholder(),
    Object? page = const $CopyWithPlaceholder(),
    Object? pageSize = const $CopyWithPlaceholder(),
  }) {
    return LiveRoomPagedResult(
      items: items == const $CopyWithPlaceholder()
          ? _value.items
          // ignore: cast_nullable_to_non_nullable
          : items as List<LiveRoom>,
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

extension $LiveRoomPagedResultCopyWith on LiveRoomPagedResult {
  /// Returns a callable class that can be used as follows: `instanceOfLiveRoomPagedResult.copyWith(...)` or like so:`instanceOfLiveRoomPagedResult.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$LiveRoomPagedResultCWProxy get copyWith =>
      _$LiveRoomPagedResultCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LiveRoomPagedResult _$LiveRoomPagedResultFromJson(Map<String, dynamic> json) =>
    $checkedCreate('LiveRoomPagedResult', json, ($checkedConvert) {
      $checkKeys(
        json,
        requiredKeys: const ['items', 'total', 'page', 'pageSize'],
      );
      final val = LiveRoomPagedResult(
        items: $checkedConvert(
          'items',
          (v) => (v as List<dynamic>)
              .map((e) => LiveRoom.fromJson(e as Map<String, dynamic>))
              .toList(),
        ),
        total: $checkedConvert('total', (v) => (v as num).toInt()),
        page: $checkedConvert('page', (v) => (v as num).toInt()),
        pageSize: $checkedConvert('pageSize', (v) => (v as num).toInt()),
      );
      return val;
    });

Map<String, dynamic> _$LiveRoomPagedResultToJson(
  LiveRoomPagedResult instance,
) => <String, dynamic>{
  'items': instance.items.map((e) => e.toJson()).toList(),
  'total': instance.total,
  'page': instance.page,
  'pageSize': instance.pageSize,
};
