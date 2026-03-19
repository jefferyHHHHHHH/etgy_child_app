// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_ai_risk_alerts_get200_response_all_of_data_items_inner_user.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerUserCWProxy {
  ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerUser id(int id);

  ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerUser username(
    String username,
  );

  ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerUser role(
    ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerUserRoleEnum role,
  );

  ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerUser childProfile(
    ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerUserChildProfile?
    childProfile,
  );

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerUser(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerUser(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerUser call({
    int id,
    String username,
    ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerUserRoleEnum role,
    ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerUserChildProfile?
    childProfile,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerUser.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerUser.copyWith.fieldName(...)`
class _$ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerUserCWProxyImpl
    implements _$ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerUserCWProxy {
  const _$ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerUserCWProxyImpl(
    this._value,
  );

  final ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerUser _value;

  @override
  ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerUser id(int id) =>
      this(id: id);

  @override
  ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerUser username(
    String username,
  ) => this(username: username);

  @override
  ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerUser role(
    ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerUserRoleEnum role,
  ) => this(role: role);

  @override
  ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerUser childProfile(
    ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerUserChildProfile?
    childProfile,
  ) => this(childProfile: childProfile);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerUser(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerUser(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerUser call({
    Object? id = const $CopyWithPlaceholder(),
    Object? username = const $CopyWithPlaceholder(),
    Object? role = const $CopyWithPlaceholder(),
    Object? childProfile = const $CopyWithPlaceholder(),
  }) {
    return ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerUser(
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
                as ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerUserRoleEnum,
      childProfile: childProfile == const $CopyWithPlaceholder()
          ? _value.childProfile
          // ignore: cast_nullable_to_non_nullable
          : childProfile
                as ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerUserChildProfile?,
    );
  }
}

extension $ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerUserCopyWith
    on ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerUser {
  /// Returns a callable class that can be used as follows: `instanceOfApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerUser.copyWith(...)` or like so:`instanceOfApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerUser.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerUserCWProxy get copyWith =>
      _$ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerUserCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerUser
_$ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerUserFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerUser',
  json,
  ($checkedConvert) {
    $checkKeys(json, requiredKeys: const ['id', 'username', 'role']);
    final val = ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerUser(
      id: $checkedConvert('id', (v) => (v as num).toInt()),
      username: $checkedConvert('username', (v) => v as String),
      role: $checkedConvert(
        'role',
        (v) => $enumDecode(
          _$ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerUserRoleEnumEnumMap,
          v,
        ),
      ),
      childProfile: $checkedConvert(
        'childProfile',
        (v) => v == null
            ? null
            : ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerUserChildProfile.fromJson(
                v as Map<String, dynamic>,
              ),
      ),
    );
    return val;
  },
);

Map<String, dynamic>
_$ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerUserToJson(
  ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerUser instance,
) => <String, dynamic>{
  'id': instance.id,
  'username': instance.username,
  'role':
      _$ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerUserRoleEnumEnumMap[instance
          .role]!,
  'childProfile': ?instance.childProfile?.toJson(),
};

const _$ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerUserRoleEnumEnumMap = {
  ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerUserRoleEnum.CHILD: 'CHILD',
  ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerUserRoleEnum.VOLUNTEER:
      'VOLUNTEER',
  ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerUserRoleEnum.COLLEGE_ADMIN:
      'COLLEGE_ADMIN',
  ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerUserRoleEnum.PLATFORM_ADMIN:
      'PLATFORM_ADMIN',
};
