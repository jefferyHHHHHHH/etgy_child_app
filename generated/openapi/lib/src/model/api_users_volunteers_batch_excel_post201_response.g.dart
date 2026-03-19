// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_users_volunteers_batch_excel_post201_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ApiUsersVolunteersBatchExcelPost201ResponseCWProxy {
  ApiUsersVolunteersBatchExcelPost201Response code(int code);

  ApiUsersVolunteersBatchExcelPost201Response message(String message);

  ApiUsersVolunteersBatchExcelPost201Response data(
    ApiUsersVolunteersBatchExcelPost201ResponseAllOfData data,
  );

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiUsersVolunteersBatchExcelPost201Response(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiUsersVolunteersBatchExcelPost201Response(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiUsersVolunteersBatchExcelPost201Response call({
    int code,
    String message,
    ApiUsersVolunteersBatchExcelPost201ResponseAllOfData data,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfApiUsersVolunteersBatchExcelPost201Response.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfApiUsersVolunteersBatchExcelPost201Response.copyWith.fieldName(...)`
class _$ApiUsersVolunteersBatchExcelPost201ResponseCWProxyImpl
    implements _$ApiUsersVolunteersBatchExcelPost201ResponseCWProxy {
  const _$ApiUsersVolunteersBatchExcelPost201ResponseCWProxyImpl(this._value);

  final ApiUsersVolunteersBatchExcelPost201Response _value;

  @override
  ApiUsersVolunteersBatchExcelPost201Response code(int code) =>
      this(code: code);

  @override
  ApiUsersVolunteersBatchExcelPost201Response message(String message) =>
      this(message: message);

  @override
  ApiUsersVolunteersBatchExcelPost201Response data(
    ApiUsersVolunteersBatchExcelPost201ResponseAllOfData data,
  ) => this(data: data);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiUsersVolunteersBatchExcelPost201Response(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiUsersVolunteersBatchExcelPost201Response(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiUsersVolunteersBatchExcelPost201Response call({
    Object? code = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? data = const $CopyWithPlaceholder(),
  }) {
    return ApiUsersVolunteersBatchExcelPost201Response(
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
          : data as ApiUsersVolunteersBatchExcelPost201ResponseAllOfData,
    );
  }
}

extension $ApiUsersVolunteersBatchExcelPost201ResponseCopyWith
    on ApiUsersVolunteersBatchExcelPost201Response {
  /// Returns a callable class that can be used as follows: `instanceOfApiUsersVolunteersBatchExcelPost201Response.copyWith(...)` or like so:`instanceOfApiUsersVolunteersBatchExcelPost201Response.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ApiUsersVolunteersBatchExcelPost201ResponseCWProxy get copyWith =>
      _$ApiUsersVolunteersBatchExcelPost201ResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiUsersVolunteersBatchExcelPost201Response
_$ApiUsersVolunteersBatchExcelPost201ResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ApiUsersVolunteersBatchExcelPost201Response', json, (
  $checkedConvert,
) {
  $checkKeys(json, requiredKeys: const ['code', 'message', 'data']);
  final val = ApiUsersVolunteersBatchExcelPost201Response(
    code: $checkedConvert('code', (v) => (v as num).toInt()),
    message: $checkedConvert('message', (v) => v as String),
    data: $checkedConvert(
      'data',
      (v) => ApiUsersVolunteersBatchExcelPost201ResponseAllOfData.fromJson(
        v as Map<String, dynamic>,
      ),
    ),
  );
  return val;
});

Map<String, dynamic> _$ApiUsersVolunteersBatchExcelPost201ResponseToJson(
  ApiUsersVolunteersBatchExcelPost201Response instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data.toJson(),
};
