// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_ai_tutor_chat_post200_response_all_of_data_risk.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ApiAiTutorChatPost200ResponseAllOfDataRiskCWProxy {
  ApiAiTutorChatPost200ResponseAllOfDataRisk triggered(bool triggered);

  ApiAiTutorChatPost200ResponseAllOfDataRisk riskType(String? riskType);

  ApiAiTutorChatPost200ResponseAllOfDataRisk severity(
    ApiAiTutorChatPost200ResponseAllOfDataRiskSeverityEnum? severity,
  );

  ApiAiTutorChatPost200ResponseAllOfDataRisk alertId(int? alertId);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiAiTutorChatPost200ResponseAllOfDataRisk(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiAiTutorChatPost200ResponseAllOfDataRisk(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiAiTutorChatPost200ResponseAllOfDataRisk call({
    bool triggered,
    String? riskType,
    ApiAiTutorChatPost200ResponseAllOfDataRiskSeverityEnum? severity,
    int? alertId,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfApiAiTutorChatPost200ResponseAllOfDataRisk.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfApiAiTutorChatPost200ResponseAllOfDataRisk.copyWith.fieldName(...)`
class _$ApiAiTutorChatPost200ResponseAllOfDataRiskCWProxyImpl
    implements _$ApiAiTutorChatPost200ResponseAllOfDataRiskCWProxy {
  const _$ApiAiTutorChatPost200ResponseAllOfDataRiskCWProxyImpl(this._value);

  final ApiAiTutorChatPost200ResponseAllOfDataRisk _value;

  @override
  ApiAiTutorChatPost200ResponseAllOfDataRisk triggered(bool triggered) =>
      this(triggered: triggered);

  @override
  ApiAiTutorChatPost200ResponseAllOfDataRisk riskType(String? riskType) =>
      this(riskType: riskType);

  @override
  ApiAiTutorChatPost200ResponseAllOfDataRisk severity(
    ApiAiTutorChatPost200ResponseAllOfDataRiskSeverityEnum? severity,
  ) => this(severity: severity);

  @override
  ApiAiTutorChatPost200ResponseAllOfDataRisk alertId(int? alertId) =>
      this(alertId: alertId);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiAiTutorChatPost200ResponseAllOfDataRisk(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiAiTutorChatPost200ResponseAllOfDataRisk(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiAiTutorChatPost200ResponseAllOfDataRisk call({
    Object? triggered = const $CopyWithPlaceholder(),
    Object? riskType = const $CopyWithPlaceholder(),
    Object? severity = const $CopyWithPlaceholder(),
    Object? alertId = const $CopyWithPlaceholder(),
  }) {
    return ApiAiTutorChatPost200ResponseAllOfDataRisk(
      triggered: triggered == const $CopyWithPlaceholder()
          ? _value.triggered
          // ignore: cast_nullable_to_non_nullable
          : triggered as bool,
      riskType: riskType == const $CopyWithPlaceholder()
          ? _value.riskType
          // ignore: cast_nullable_to_non_nullable
          : riskType as String?,
      severity: severity == const $CopyWithPlaceholder()
          ? _value.severity
          // ignore: cast_nullable_to_non_nullable
          : severity as ApiAiTutorChatPost200ResponseAllOfDataRiskSeverityEnum?,
      alertId: alertId == const $CopyWithPlaceholder()
          ? _value.alertId
          // ignore: cast_nullable_to_non_nullable
          : alertId as int?,
    );
  }
}

extension $ApiAiTutorChatPost200ResponseAllOfDataRiskCopyWith
    on ApiAiTutorChatPost200ResponseAllOfDataRisk {
  /// Returns a callable class that can be used as follows: `instanceOfApiAiTutorChatPost200ResponseAllOfDataRisk.copyWith(...)` or like so:`instanceOfApiAiTutorChatPost200ResponseAllOfDataRisk.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ApiAiTutorChatPost200ResponseAllOfDataRiskCWProxy get copyWith =>
      _$ApiAiTutorChatPost200ResponseAllOfDataRiskCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiAiTutorChatPost200ResponseAllOfDataRisk
_$ApiAiTutorChatPost200ResponseAllOfDataRiskFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ApiAiTutorChatPost200ResponseAllOfDataRisk', json, (
  $checkedConvert,
) {
  $checkKeys(json, requiredKeys: const ['triggered']);
  final val = ApiAiTutorChatPost200ResponseAllOfDataRisk(
    triggered: $checkedConvert('triggered', (v) => v as bool),
    riskType: $checkedConvert('riskType', (v) => v as String?),
    severity: $checkedConvert(
      'severity',
      (v) => $enumDecodeNullable(
        _$ApiAiTutorChatPost200ResponseAllOfDataRiskSeverityEnumEnumMap,
        v,
      ),
    ),
    alertId: $checkedConvert('alertId', (v) => (v as num?)?.toInt()),
  );
  return val;
});

Map<String, dynamic> _$ApiAiTutorChatPost200ResponseAllOfDataRiskToJson(
  ApiAiTutorChatPost200ResponseAllOfDataRisk instance,
) => <String, dynamic>{
  'triggered': instance.triggered,
  'riskType': ?instance.riskType,
  'severity':
      ?_$ApiAiTutorChatPost200ResponseAllOfDataRiskSeverityEnumEnumMap[instance
          .severity],
  'alertId': ?instance.alertId,
};

const _$ApiAiTutorChatPost200ResponseAllOfDataRiskSeverityEnumEnumMap = {
  ApiAiTutorChatPost200ResponseAllOfDataRiskSeverityEnum.LOW: 'LOW',
  ApiAiTutorChatPost200ResponseAllOfDataRiskSeverityEnum.MEDIUM: 'MEDIUM',
  ApiAiTutorChatPost200ResponseAllOfDataRiskSeverityEnum.HIGH: 'HIGH',
};
