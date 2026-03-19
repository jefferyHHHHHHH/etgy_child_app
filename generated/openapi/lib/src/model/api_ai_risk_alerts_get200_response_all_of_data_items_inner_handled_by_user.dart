//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'api_ai_risk_alerts_get200_response_all_of_data_items_inner_handled_by_user.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerHandledByUser {
  /// Returns a new [ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerHandledByUser] instance.
  ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerHandledByUser({

    required  this.id,

    required  this.username,

    required  this.role,
  });

          // minimum: 0
  @JsonKey(
    
    name: r'id',
    required: true,
    includeIfNull: false,
  )


  final int id;



  @JsonKey(
    
    name: r'username',
    required: true,
    includeIfNull: false,
  )


  final String username;



  @JsonKey(
    
    name: r'role',
    required: true,
    includeIfNull: false,
  )


  final ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerHandledByUserRoleEnum role;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerHandledByUser &&
      other.id == id &&
      other.username == username &&
      other.role == role;

    @override
    int get hashCode =>
        id.hashCode +
        username.hashCode +
        role.hashCode;

  factory ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerHandledByUser.fromJson(Map<String, dynamic> json) => _$ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerHandledByUserFromJson(json);

  Map<String, dynamic> toJson() => _$ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerHandledByUserToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}


enum ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerHandledByUserRoleEnum {
@JsonValue(r'CHILD')
CHILD(r'CHILD'),
@JsonValue(r'VOLUNTEER')
VOLUNTEER(r'VOLUNTEER'),
@JsonValue(r'COLLEGE_ADMIN')
COLLEGE_ADMIN(r'COLLEGE_ADMIN'),
@JsonValue(r'PLATFORM_ADMIN')
PLATFORM_ADMIN(r'PLATFORM_ADMIN');

const ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerHandledByUserRoleEnum(this.value);

final String value;

@override
String toString() => value;
}


