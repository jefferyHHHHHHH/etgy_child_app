// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_ai_risk_alerts_get200_response_all_of_data_items_inner_handled_by_user.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerHandledByUserCWProxy {
  ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerHandledByUser id(int id);

  ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerHandledByUser username(
    String username,
  );

  ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerHandledByUser role(
    ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerHandledByUserRoleEnum role,
  );

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerHandledByUser(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerHandledByUser(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerHandledByUser call({
    int id,
    String username,
    ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerHandledByUserRoleEnum role,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerHandledByUser.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerHandledByUser.copyWith.fieldName(...)`
class _$ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerHandledByUserCWProxyImpl
    implements
        _$ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerHandledByUserCWProxy {
  const _$ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerHandledByUserCWProxyImpl(
    this._value,
  );

  final ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerHandledByUser _value;

  @override
  ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerHandledByUser id(int id) =>
      this(id: id);

  @override
  ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerHandledByUser username(
    String username,
  ) => this(username: username);

  @override
  ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerHandledByUser role(
    ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerHandledByUserRoleEnum role,
  ) => this(role: role);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerHandledByUser(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerHandledByUser(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerHandledByUser call({
    Object? id = const $CopyWithPlaceholder(),
    Object? username = const $CopyWithPlaceholder(),
    Object? role = const $CopyWithPlaceholder(),
  }) {
    return ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerHandledByUser(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int,
      username: username == const $CopyWithPlaceholder()
          ? _value.username
          // ignore: cast_nullable_to_non_nullable
          : username as String,
      role: role == const $CopyWithPlaceholder()
          ? _value.role
          // ignore: cast_nullable_to_non_nullable
          : role
                as ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerHandledByUserRoleEnum,
    );
  }
}

extension $ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerHandledByUserCopyWith
    on ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerHandledByUser {
  /// Returns a callable class that can be used as follows: `instanceOfApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerHandledByUser.copyWith(...)` or like so:`instanceOfApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerHandledByUser.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerHandledByUserCWProxy
  get copyWith =>
      _$ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerHandledByUserCWProxyImpl(
        this,
      );
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerHandledByUser
_$ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerHandledByUserFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerHandledByUser',
  json,
  ($checkedConvert) {
    $checkKeys(json, requiredKeys: const ['id', 'username', 'role']);
    final val = ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerHandledByUser(
      id: $checkedConvert('id', (v) => (v as num).toInt()),
      username: $checkedConvert('username', (v) => v as String),
      role: $checkedConvert(
        'role',
        (v) => $enumDecode(
          _$ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerHandledByUserRoleEnumEnumMap,
          v,
        ),
      ),
    );
    return val;
  },
);

Map<String, dynamic>
_$ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerHandledByUserToJson(
  ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerHandledByUser instance,
) => <String, dynamic>{
  'id': instance.id,
  'username': instance.username,
  'role':
      _$ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerHandledByUserRoleEnumEnumMap[instance
          .role]!,
};

const _$ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerHandledByUserRoleEnumEnumMap =
    {
      ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerHandledByUserRoleEnum
              .CHILD:
          'CHILD',
      ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerHandledByUserRoleEnum
              .VOLUNTEER:
          'VOLUNTEER',
      ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerHandledByUserRoleEnum
              .COLLEGE_ADMIN:
          'COLLEGE_ADMIN',
      ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerHandledByUserRoleEnum
              .PLATFORM_ADMIN:
          'PLATFORM_ADMIN',
    };
