// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_ai_risk_alerts_id_handle_patch200_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ApiAiRiskAlertsIdHandlePatch200ResponseCWProxy {
  ApiAiRiskAlertsIdHandlePatch200Response code(int code);

  ApiAiRiskAlertsIdHandlePatch200Response message(String message);

  ApiAiRiskAlertsIdHandlePatch200Response data(
    ApiAiRiskAlertsGet200ResponseAllOfDataItemsInner data,
  );

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiAiRiskAlertsIdHandlePatch200Response(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiAiRiskAlertsIdHandlePatch200Response(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiAiRiskAlertsIdHandlePatch200Response call({
    int code,
    String message,
    ApiAiRiskAlertsGet200ResponseAllOfDataItemsInner data,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfApiAiRiskAlertsIdHandlePatch200Response.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfApiAiRiskAlertsIdHandlePatch200Response.copyWith.fieldName(...)`
class _$ApiAiRiskAlertsIdHandlePatch200ResponseCWProxyImpl
    implements _$ApiAiRiskAlertsIdHandlePatch200ResponseCWProxy {
  const _$ApiAiRiskAlertsIdHandlePatch200ResponseCWProxyImpl(this._value);

  final ApiAiRiskAlertsIdHandlePatch200Response _value;

  @override
  ApiAiRiskAlertsIdHandlePatch200Response code(int code) => this(code: code);

  @override
  ApiAiRiskAlertsIdHandlePatch200Response message(String message) =>
      this(message: message);

  @override
  ApiAiRiskAlertsIdHandlePatch200Response data(
    ApiAiRiskAlertsGet200ResponseAllOfDataItemsInner data,
  ) => this(data: data);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiAiRiskAlertsIdHandlePatch200Response(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiAiRiskAlertsIdHandlePatch200Response(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiAiRiskAlertsIdHandlePatch200Response call({
    Object? code = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? data = const $CopyWithPlaceholder(),
  }) {
    return ApiAiRiskAlertsIdHandlePatch200Response(
      code: code == const $CopyWithPlaceholder()
          ? _value.code
          // ignore: cast_nullable_to_non_nullable
          : code as int,
      message: message == const $CopyWithPlaceholder()
          ? _value.message
          // ignore: cast_nullable_to_non_nullable
          : message as String,
      data: data == const $CopyWithPlaceholder()
          ? _value.data
          // ignore: cast_nullable_to_non_nullable
          : data as ApiAiRiskAlertsGet200ResponseAllOfDataItemsInner,
    );
  }
}

extension $ApiAiRiskAlertsIdHandlePatch200ResponseCopyWith
    on ApiAiRiskAlertsIdHandlePatch200Response {
  /// Returns a callable class that can be used as follows: `instanceOfApiAiRiskAlertsIdHandlePatch200Response.copyWith(...)` or like so:`instanceOfApiAiRiskAlertsIdHandlePatch200Response.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ApiAiRiskAlertsIdHandlePatch200ResponseCWProxy get copyWith =>
      _$ApiAiRiskAlertsIdHandlePatch200ResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiAiRiskAlertsIdHandlePatch200Response
_$ApiAiRiskAlertsIdHandlePatch200ResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate('ApiAiRiskAlertsIdHandlePatch200Response', json, (
      $checkedConvert,
    ) {
      $checkKeys(json, requiredKeys: const ['code', 'message', 'data']);
      final val = ApiAiRiskAlertsIdHandlePatch200Response(
        code: $checkedConvert('code', (v) => (v as num).toInt()),
        message: $checkedConvert('message', (v) => v as String),
        data: $checkedConvert(
          'data',
          (v) => ApiAiRiskAlertsGet200ResponseAllOfDataItemsInner.fromJson(
            v as Map<String, dynamic>,
          ),
        ),
      );
      return val;
    });

Map<String, dynamic> _$ApiAiRiskAlertsIdHandlePatch200ResponseToJson(
  ApiAiRiskAlertsIdHandlePatch200Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data.toJson(),
};
