// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_ai_risk_alerts_get200_response_all_of_data.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ApiAiRiskAlertsGet200ResponseAllOfDataCWProxy {
  ApiAiRiskAlertsGet200ResponseAllOfData page(int page);

  ApiAiRiskAlertsGet200ResponseAllOfData pageSize(int pageSize);

  ApiAiRiskAlertsGet200ResponseAllOfData total(int total);

  ApiAiRiskAlertsGet200ResponseAllOfData items(
    List<ApiAiRiskAlertsGet200ResponseAllOfDataItemsInner> items,
  );

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiAiRiskAlertsGet200ResponseAllOfData(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiAiRiskAlertsGet200ResponseAllOfData(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiAiRiskAlertsGet200ResponseAllOfData call({
    int page,
    int pageSize,
    int total,
    List<ApiAiRiskAlertsGet200ResponseAllOfDataItemsInner> items,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfApiAiRiskAlertsGet200ResponseAllOfData.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfApiAiRiskAlertsGet200ResponseAllOfData.copyWith.fieldName(...)`
class _$ApiAiRiskAlertsGet200ResponseAllOfDataCWProxyImpl
    implements _$ApiAiRiskAlertsGet200ResponseAllOfDataCWProxy {
  const _$ApiAiRiskAlertsGet200ResponseAllOfDataCWProxyImpl(this._value);

  final ApiAiRiskAlertsGet200ResponseAllOfData _value;

  @override
  ApiAiRiskAlertsGet200ResponseAllOfData page(int page) => this(page: page);

  @override
  ApiAiRiskAlertsGet200ResponseAllOfData pageSize(int pageSize) =>
      this(pageSize: pageSize);

  @override
  ApiAiRiskAlertsGet200ResponseAllOfData total(int total) => this(total: total);

  @override
  ApiAiRiskAlertsGet200ResponseAllOfData items(
    List<ApiAiRiskAlertsGet200ResponseAllOfDataItemsInner> items,
  ) => this(items: items);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiAiRiskAlertsGet200ResponseAllOfData(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiAiRiskAlertsGet200ResponseAllOfData(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiAiRiskAlertsGet200ResponseAllOfData call({
    Object? page = const $CopyWithPlaceholder(),
    Object? pageSize = const $CopyWithPlaceholder(),
    Object? total = const $CopyWithPlaceholder(),
    Object? items = const $CopyWithPlaceholder(),
  }) {
    return ApiAiRiskAlertsGet200ResponseAllOfData(
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
          : items as List<ApiAiRiskAlertsGet200ResponseAllOfDataItemsInner>,
    );
  }
}

extension $ApiAiRiskAlertsGet200ResponseAllOfDataCopyWith
    on ApiAiRiskAlertsGet200ResponseAllOfData {
  /// Returns a callable class that can be used as follows: `instanceOfApiAiRiskAlertsGet200ResponseAllOfData.copyWith(...)` or like so:`instanceOfApiAiRiskAlertsGet200ResponseAllOfData.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ApiAiRiskAlertsGet200ResponseAllOfDataCWProxy get copyWith =>
      _$ApiAiRiskAlertsGet200ResponseAllOfDataCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiAiRiskAlertsGet200ResponseAllOfData
_$ApiAiRiskAlertsGet200ResponseAllOfDataFromJson(Map<String, dynamic> json) =>
    $checkedCreate('ApiAiRiskAlertsGet200ResponseAllOfData', json, (
      $checkedConvert,
    ) {
      $checkKeys(
        json,
        requiredKeys: const ['page', 'pageSize', 'total', 'items'],
      );
      final val = ApiAiRiskAlertsGet200ResponseAllOfData(
        page: $checkedConvert('page', (v) => (v as num).toInt()),
        pageSize: $checkedConvert('pageSize', (v) => (v as num).toInt()),
        total: $checkedConvert('total', (v) => (v as num).toInt()),
        items: $checkedConvert(
          'items',
          (v) => (v as List<dynamic>)
              .map(
                (e) =>
                    ApiAiRiskAlertsGet200ResponseAllOfDataItemsInner.fromJson(
                      e as Map<String, dynamic>,
                    ),
              )
              .toList(),
        ),
      );
      return val;
    });

Map<String, dynamic> _$ApiAiRiskAlertsGet200ResponseAllOfDataToJson(
  ApiAiRiskAlertsGet200ResponseAllOfData instance,
) => <String, dynamic>{
  'page': instance.page,
  'pageSize': instance.pageSize,
  'total': instance.total,
  'items': instance.items.map((e) => e.toJson()).toList(),
};
