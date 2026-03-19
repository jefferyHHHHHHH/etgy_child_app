// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_ai_risk_alerts_get200_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ApiAiRiskAlertsGet200ResponseCWProxy {
  ApiAiRiskAlertsGet200Response code(int code);

  ApiAiRiskAlertsGet200Response message(String message);

  ApiAiRiskAlertsGet200Response data(
    ApiAiRiskAlertsGet200ResponseAllOfData data,
  );

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiAiRiskAlertsGet200Response(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiAiRiskAlertsGet200Response(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiAiRiskAlertsGet200Response call({
    int code,
    String message,
    ApiAiRiskAlertsGet200ResponseAllOfData data,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfApiAiRiskAlertsGet200Response.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfApiAiRiskAlertsGet200Response.copyWith.fieldName(...)`
class _$ApiAiRiskAlertsGet200ResponseCWProxyImpl
    implements _$ApiAiRiskAlertsGet200ResponseCWProxy {
  const _$ApiAiRiskAlertsGet200ResponseCWProxyImpl(this._value);

  final ApiAiRiskAlertsGet200Response _value;

  @override
  ApiAiRiskAlertsGet200Response code(int code) => this(code: code);

  @override
  ApiAiRiskAlertsGet200Response message(String message) =>
      this(message: message);

  @override
  ApiAiRiskAlertsGet200Response data(
    ApiAiRiskAlertsGet200ResponseAllOfData data,
  ) => this(data: data);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiAiRiskAlertsGet200Response(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiAiRiskAlertsGet200Response(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiAiRiskAlertsGet200Response call({
    Object? code = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? data = const $CopyWithPlaceholder(),
  }) {
    return ApiAiRiskAlertsGet200Response(
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
          : data as ApiAiRiskAlertsGet200ResponseAllOfData,
    );
  }
}

extension $ApiAiRiskAlertsGet200ResponseCopyWith
    on ApiAiRiskAlertsGet200Response {
  /// Returns a callable class that can be used as follows: `instanceOfApiAiRiskAlertsGet200Response.copyWith(...)` or like so:`instanceOfApiAiRiskAlertsGet200Response.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ApiAiRiskAlertsGet200ResponseCWProxy get copyWith =>
      _$ApiAiRiskAlertsGet200ResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiAiRiskAlertsGet200Response _$ApiAiRiskAlertsGet200ResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ApiAiRiskAlertsGet200Response', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['code', 'message', 'data']);
  final val = ApiAiRiskAlertsGet200Response(
    code: $checkedConvert('code', (v) => (v as num).toInt()),
    message: $checkedConvert('message', (v) => v as String),
    data: $checkedConvert(
      'data',
      (v) => ApiAiRiskAlertsGet200ResponseAllOfData.fromJson(
        v as Map<String, dynamic>,
      ),
    ),
  );
  return val;
});

Map<String, dynamic> _$ApiAiRiskAlertsGet200ResponseToJson(
  ApiAiRiskAlertsGet200Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data.toJson(),
};
