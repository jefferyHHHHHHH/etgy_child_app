// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_auth_wechat_mini_program_login_post200_response_all_of_data_any_of.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ApiAuthWechatMiniProgramLoginPost200ResponseAllOfDataAnyOfCWProxy {
  ApiAuthWechatMiniProgramLoginPost200ResponseAllOfDataAnyOf bindRequired(
    bool bindRequired,
  );

  ApiAuthWechatMiniProgramLoginPost200ResponseAllOfDataAnyOf bindToken(
    String bindToken,
  );

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiAuthWechatMiniProgramLoginPost200ResponseAllOfDataAnyOf(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiAuthWechatMiniProgramLoginPost200ResponseAllOfDataAnyOf(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiAuthWechatMiniProgramLoginPost200ResponseAllOfDataAnyOf call({
    bool bindRequired,
    String bindToken,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfApiAuthWechatMiniProgramLoginPost200ResponseAllOfDataAnyOf.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfApiAuthWechatMiniProgramLoginPost200ResponseAllOfDataAnyOf.copyWith.fieldName(...)`
class _$ApiAuthWechatMiniProgramLoginPost200ResponseAllOfDataAnyOfCWProxyImpl
    implements
        _$ApiAuthWechatMiniProgramLoginPost200ResponseAllOfDataAnyOfCWProxy {
  const _$ApiAuthWechatMiniProgramLoginPost200ResponseAllOfDataAnyOfCWProxyImpl(
    this._value,
  );

  final ApiAuthWechatMiniProgramLoginPost200ResponseAllOfDataAnyOf _value;

  @override
  ApiAuthWechatMiniProgramLoginPost200ResponseAllOfDataAnyOf bindRequired(
    bool bindRequired,
  ) => this(bindRequired: bindRequired);

  @override
  ApiAuthWechatMiniProgramLoginPost200ResponseAllOfDataAnyOf bindToken(
    String bindToken,
  ) => this(bindToken: bindToken);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiAuthWechatMiniProgramLoginPost200ResponseAllOfDataAnyOf(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiAuthWechatMiniProgramLoginPost200ResponseAllOfDataAnyOf(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiAuthWechatMiniProgramLoginPost200ResponseAllOfDataAnyOf call({
    Object? bindRequired = const $CopyWithPlaceholder(),
    Object? bindToken = const $CopyWithPlaceholder(),
  }) {
    return ApiAuthWechatMiniProgramLoginPost200ResponseAllOfDataAnyOf(
      bindRequired: bindRequired == const $CopyWithPlaceholder()
          ? _value.bindRequired
          // ignore: cast_nullable_to_non_nullable
          : bindRequired as bool,
      bindToken: bindToken == const $CopyWithPlaceholder()
          ? _value.bindToken
          // ignore: cast_nullable_to_non_nullable
          : bindToken as String,
    );
  }
}

extension $ApiAuthWechatMiniProgramLoginPost200ResponseAllOfDataAnyOfCopyWith
    on ApiAuthWechatMiniProgramLoginPost200ResponseAllOfDataAnyOf {
  /// Returns a callable class that can be used as follows: `instanceOfApiAuthWechatMiniProgramLoginPost200ResponseAllOfDataAnyOf.copyWith(...)` or like so:`instanceOfApiAuthWechatMiniProgramLoginPost200ResponseAllOfDataAnyOf.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ApiAuthWechatMiniProgramLoginPost200ResponseAllOfDataAnyOfCWProxy
  get copyWith =>
      _$ApiAuthWechatMiniProgramLoginPost200ResponseAllOfDataAnyOfCWProxyImpl(
        this,
      );
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiAuthWechatMiniProgramLoginPost200ResponseAllOfDataAnyOf
_$ApiAuthWechatMiniProgramLoginPost200ResponseAllOfDataAnyOfFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'ApiAuthWechatMiniProgramLoginPost200ResponseAllOfDataAnyOf',
  json,
  ($checkedConvert) {
    $checkKeys(json, requiredKeys: const ['bindRequired', 'bindToken']);
    final val = ApiAuthWechatMiniProgramLoginPost200ResponseAllOfDataAnyOf(
      bindRequired: $checkedConvert('bindRequired', (v) => v as bool),
      bindToken: $checkedConvert('bindToken', (v) => v as String),
    );
    return val;
  },
);

Map<String, dynamic>
_$ApiAuthWechatMiniProgramLoginPost200ResponseAllOfDataAnyOfToJson(
  ApiAuthWechatMiniProgramLoginPost200ResponseAllOfDataAnyOf instance,
) => <String, dynamic>{
  'bindRequired': instance.bindRequired,
  'bindToken': instance.bindToken,
};
