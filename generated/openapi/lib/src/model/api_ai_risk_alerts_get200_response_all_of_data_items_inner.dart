//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:etgy_openapi_client/src/model/api_ai_risk_alerts_get200_response_all_of_data_items_inner_handled_by_user.dart';
import 'package:etgy_openapi_client/src/model/api_ai_risk_alerts_get200_response_all_of_data_items_inner_college.dart';
import 'package:etgy_openapi_client/src/model/api_ai_risk_alerts_get200_response_all_of_data_items_inner_user.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'api_ai_risk_alerts_get200_response_all_of_data_items_inner.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ApiAiRiskAlertsGet200ResponseAllOfDataItemsInner {
  /// Returns a new [ApiAiRiskAlertsGet200ResponseAllOfDataItemsInner] instance.
  ApiAiRiskAlertsGet200ResponseAllOfDataItemsInner({

    required  this.id,

    required  this.conversationId,

    required  this.userId,

     this.collegeId,

    required  this.mode,

    required  this.severity,

    required  this.riskType,

    required  this.inputText,

     this.matchedKeywords,

    required  this.status,

     this.handledAt,

     this.handledBy,

     this.handleNote,

    required  this.createdAt,

    required  this.updatedAt,

     this.user,

     this.college,

     this.handledByUser,
  });

          // minimum: 0
  @JsonKey(
    
    name: r'id',
    required: true,
    includeIfNull: false,
  )


  final int id;



          // minimum: 0
  @JsonKey(
    
    name: r'conversationId',
    required: true,
    includeIfNull: false,
  )


  final int conversationId;



          // minimum: 0
  @JsonKey(
    
    name: r'userId',
    required: true,
    includeIfNull: false,
  )


  final int userId;



          // minimum: 0
  @JsonKey(
    
    name: r'collegeId',
    required: false,
    includeIfNull: false,
  )


  final int? collegeId;



  @JsonKey(
    
    name: r'mode',
    required: true,
    includeIfNull: false,
  )


  final ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerModeEnum mode;



  @JsonKey(
    
    name: r'severity',
    required: true,
    includeIfNull: false,
  )


  final ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerSeverityEnum severity;



  @JsonKey(
    
    name: r'riskType',
    required: true,
    includeIfNull: false,
  )


  final String riskType;



  @JsonKey(
    
    name: r'inputText',
    required: true,
    includeIfNull: false,
  )


  final String inputText;



  @JsonKey(
    
    name: r'matchedKeywords',
    required: false,
    includeIfNull: false,
  )


  final String? matchedKeywords;



  @JsonKey(
    
    name: r'status',
    required: true,
    includeIfNull: false,
  )


  final ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerStatusEnum status;



  @JsonKey(
    
    name: r'handledAt',
    required: false,
    includeIfNull: false,
  )


  final DateTime? handledAt;



          // minimum: 0
  @JsonKey(
    
    name: r'handledBy',
    required: false,
    includeIfNull: false,
  )


  final int? handledBy;



  @JsonKey(
    
    name: r'handleNote',
    required: false,
    includeIfNull: false,
  )


  final String? handleNote;



  @JsonKey(
    
    name: r'createdAt',
    required: true,
    includeIfNull: false,
  )


  final DateTime createdAt;



  @JsonKey(
    
    name: r'updatedAt',
    required: true,
    includeIfNull: false,
  )


  final DateTime updatedAt;



  @JsonKey(
    
    name: r'user',
    required: false,
    includeIfNull: false,
  )


  final ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerUser? user;



  @JsonKey(
    
    name: r'college',
    required: false,
    includeIfNull: false,
  )


  final ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerCollege? college;



  @JsonKey(
    
    name: r'handledByUser',
    required: false,
    includeIfNull: false,
  )


  final ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerHandledByUser? handledByUser;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ApiAiRiskAlertsGet200ResponseAllOfDataItemsInner &&
      other.id == id &&
      other.conversationId == conversationId &&
      other.userId == userId &&
      other.collegeId == collegeId &&
      other.mode == mode &&
      other.severity == severity &&
      other.riskType == riskType &&
      other.inputText == inputText &&
      other.matchedKeywords == matchedKeywords &&
      other.status == status &&
      other.handledAt == handledAt &&
      other.handledBy == handledBy &&
      other.handleNote == handleNote &&
      other.createdAt == createdAt &&
      other.updatedAt == updatedAt &&
      other.user == user &&
      other.college == college &&
      other.handledByUser == handledByUser;

    @override
    int get hashCode =>
        id.hashCode +
        conversationId.hashCode +
        userId.hashCode +
        (collegeId == null ? 0 : collegeId.hashCode) +
        mode.hashCode +
        severity.hashCode +
        riskType.hashCode +
        inputText.hashCode +
        (matchedKeywords == null ? 0 : matchedKeywords.hashCode) +
        status.hashCode +
        (handledAt == null ? 0 : handledAt.hashCode) +
        (handledBy == null ? 0 : handledBy.hashCode) +
        (handleNote == null ? 0 : handleNote.hashCode) +
        createdAt.hashCode +
        updatedAt.hashCode +
        user.hashCode +
        (college == null ? 0 : college.hashCode) +
        (handledByUser == null ? 0 : handledByUser.hashCode);

  factory ApiAiRiskAlertsGet200ResponseAllOfDataItemsInner.fromJson(Map<String, dynamic> json) => _$ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerFromJson(json);

  Map<String, dynamic> toJson() => _$ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}


enum ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerModeEnum {
@JsonValue(r'STUDY')
STUDY(r'STUDY'),
@JsonValue(r'EMOTION')
EMOTION(r'EMOTION');

const ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerModeEnum(this.value);

final String value;

@override
String toString() => value;
}



enum ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerSeverityEnum {
@JsonValue(r'LOW')
LOW(r'LOW'),
@JsonValue(r'MEDIUM')
MEDIUM(r'MEDIUM'),
@JsonValue(r'HIGH')
HIGH(r'HIGH');

const ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerSeverityEnum(this.value);

final String value;

@override
String toString() => value;
}



enum ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerStatusEnum {
@JsonValue(r'OPEN')
OPEN(r'OPEN'),
@JsonValue(r'HANDLED')
HANDLED(r'HANDLED');

const ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerStatusEnum(this.value);

final String value;

@override
String toString() => value;
}


