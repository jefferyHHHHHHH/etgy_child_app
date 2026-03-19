// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_ai_risk_alerts_id_handle_patch_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ApiAiRiskAlertsIdHandlePatchRequestCWProxy {
  ApiAiRiskAlertsIdHandlePatchRequest note(String? note);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiAiRiskAlertsIdHandlePatchRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiAiRiskAlertsIdHandlePatchRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiAiRiskAlertsIdHandlePatchRequest call({String? note});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfApiAiRiskAlertsIdHandlePatchRequest.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfApiAiRiskAlertsIdHandlePatchRequest.copyWith.fieldName(...)`
class _$ApiAiRiskAlertsIdHandlePatchRequestCWProxyImpl
    implements _$ApiAiRiskAlertsIdHandlePatchRequestCWProxy {
  const _$ApiAiRiskAlertsIdHandlePatchRequestCWProxyImpl(this._value);

  final ApiAiRiskAlertsIdHandlePatchRequest _value;

  @override
  ApiAiRiskAlertsIdHandlePatchRequest note(String? note) => this(note: note);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiAiRiskAlertsIdHandlePatchRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiAiRiskAlertsIdHandlePatchRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiAiRiskAlertsIdHandlePatchRequest call({
    Object? note = const $CopyWithPlaceholder(),
  }) {
    return ApiAiRiskAlertsIdHandlePatchRequest(
      note: note == const $CopyWithPlaceholder()
          ? _value.note
          // ignore: cast_nullable_to_non_nullable
          : note as String?,
    );
  }
}

extension $ApiAiRiskAlertsIdHandlePatchRequestCopyWith
    on ApiAiRiskAlertsIdHandlePatchRequest {
  /// Returns a callable class that can be used as follows: `instanceOfApiAiRiskAlertsIdHandlePatchRequest.copyWith(...)` or like so:`instanceOfApiAiRiskAlertsIdHandlePatchRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ApiAiRiskAlertsIdHandlePatchRequestCWProxy get copyWith =>
      _$ApiAiRiskAlertsIdHandlePatchRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiAiRiskAlertsIdHandlePatchRequest
_$ApiAiRiskAlertsIdHandlePatchRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate('ApiAiRiskAlertsIdHandlePatchRequest', json, (
      $checkedConvert,
    ) {
      final val = ApiAiRiskAlertsIdHandlePatchRequest(
        note: $checkedConvert('note', (v) => v as String?),
      );
      return val;
    });

Map<String, dynamic> _$ApiAiRiskAlertsIdHandlePatchRequestToJson(
  ApiAiRiskAlertsIdHandlePatchRequest instance,
) => <String, dynamic>{'note': ?instance.note};
