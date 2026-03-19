// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_meta_dictionaries_get200_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ApiMetaDictionariesGet200ResponseCWProxy {
  ApiMetaDictionariesGet200Response code(int code);

  ApiMetaDictionariesGet200Response message(String message);

  ApiMetaDictionariesGet200Response data(Dictionaries data);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiMetaDictionariesGet200Response(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiMetaDictionariesGet200Response(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiMetaDictionariesGet200Response call({
    int code,
    String message,
    Dictionaries data,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfApiMetaDictionariesGet200Response.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfApiMetaDictionariesGet200Response.copyWith.fieldName(...)`
class _$ApiMetaDictionariesGet200ResponseCWProxyImpl
    implements _$ApiMetaDictionariesGet200ResponseCWProxy {
  const _$ApiMetaDictionariesGet200ResponseCWProxyImpl(this._value);

  final ApiMetaDictionariesGet200Response _value;

  @override
  ApiMetaDictionariesGet200Response code(int code) => this(code: code);

  @override
  ApiMetaDictionariesGet200Response message(String message) =>
      this(message: message);

  @override
  ApiMetaDictionariesGet200Response data(Dictionaries data) => this(data: data);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiMetaDictionariesGet200Response(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiMetaDictionariesGet200Response(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiMetaDictionariesGet200Response call({
    Object? code = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? data = const $CopyWithPlaceholder(),
  }) {
    return ApiMetaDictionariesGet200Response(
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
          : data as Dictionaries,
    );
  }
}

extension $ApiMetaDictionariesGet200ResponseCopyWith
    on ApiMetaDictionariesGet200Response {
  /// Returns a callable class that can be used as follows: `instanceOfApiMetaDictionariesGet200Response.copyWith(...)` or like so:`instanceOfApiMetaDictionariesGet200Response.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ApiMetaDictionariesGet200ResponseCWProxy get copyWith =>
      _$ApiMetaDictionariesGet200ResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiMetaDictionariesGet200Response _$ApiMetaDictionariesGet200ResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ApiMetaDictionariesGet200Response', json, (
  $checkedConvert,
) {
  $checkKeys(json, requiredKeys: const ['code', 'message', 'data']);
  final val = ApiMetaDictionariesGet200Response(
    code: $checkedConvert('code', (v) => (v as num).toInt()),
    message: $checkedConvert('message', (v) => v as String),
    data: $checkedConvert(
      'data',
      (v) => Dictionaries.fromJson(v as Map<String, dynamic>),
    ),
  );
  return val;
});

Map<String, dynamic> _$ApiMetaDictionariesGet200ResponseToJson(
  ApiMetaDictionariesGet200Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data.toJson(),
};
