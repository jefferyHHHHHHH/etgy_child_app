// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_ai_risk_alerts_get200_response_all_of_data_items_inner_college.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerCollegeCWProxy {
  ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerCollege id(int id);

  ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerCollege name(String name);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerCollege(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerCollege(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerCollege call({
    int id,
    String name,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerCollege.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerCollege.copyWith.fieldName(...)`
class _$ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerCollegeCWProxyImpl
    implements
        _$ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerCollegeCWProxy {
  const _$ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerCollegeCWProxyImpl(
    this._value,
  );

  final ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerCollege _value;

  @override
  ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerCollege id(int id) =>
      this(id: id);

  @override
  ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerCollege name(String name) =>
      this(name: name);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerCollege(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerCollege(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerCollege call({
    Object? id = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
  }) {
    return ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerCollege(
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

extension $ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerCollegeCopyWith
    on ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerCollege {
  /// Returns a callable class that can be used as follows: `instanceOfApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerCollege.copyWith(...)` or like so:`instanceOfApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerCollege.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerCollegeCWProxy
  get copyWith =>
      _$ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerCollegeCWProxyImpl(
        this,
      );
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerCollege
_$ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerCollegeFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerCollege',
  json,
  ($checkedConvert) {
    $checkKeys(json, requiredKeys: const ['id', 'name']);
    final val = ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerCollege(
      id: $checkedConvert('id', (v) => (v as num).toInt()),
      name: $checkedConvert('name', (v) => v as String),
    );
    return val;
  },
);

Map<String, dynamic>
_$ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerCollegeToJson(
  ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerCollege instance,
) => <String, dynamic>{'id': instance.id, 'name': instance.name};
