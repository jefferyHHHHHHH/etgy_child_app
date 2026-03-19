//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'api_ai_tutor_chat_post200_response_all_of_data_risk.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ApiAiTutorChatPost200ResponseAllOfDataRisk {
  /// Returns a new [ApiAiTutorChatPost200ResponseAllOfDataRisk] instance.
  ApiAiTutorChatPost200ResponseAllOfDataRisk({

    required  this.triggered,

     this.riskType,

     this.severity,

     this.alertId,
  });

  @JsonKey(
    
    name: r'triggered',
    required: true,
    includeIfNull: false,
  )


  final bool triggered;



  @JsonKey(
    
    name: r'riskType',
    required: false,
    includeIfNull: false,
  )


  final String? riskType;



  @JsonKey(
    
    name: r'severity',
    required: false,
    includeIfNull: false,
  )


  final ApiAiTutorChatPost200ResponseAllOfDataRiskSeverityEnum? severity;



          // minimum: 0
  @JsonKey(
    
    name: r'alertId',
    required: false,
    includeIfNull: false,
  )


  final int? alertId;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ApiAiTutorChatPost200ResponseAllOfDataRisk &&
      other.triggered == triggered &&
      other.riskType == riskType &&
      other.severity == severity &&
      other.alertId == alertId;

    @override
    int get hashCode =>
        triggered.hashCode +
        riskType.hashCode +
        severity.hashCode +
        alertId.hashCode;

  factory ApiAiTutorChatPost200ResponseAllOfDataRisk.fromJson(Map<String, dynamic> json) => _$ApiAiTutorChatPost200ResponseAllOfDataRiskFromJson(json);

  Map<String, dynamic> toJson() => _$ApiAiTutorChatPost200ResponseAllOfDataRiskToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}


enum ApiAiTutorChatPost200ResponseAllOfDataRiskSeverityEnum {
@JsonValue(r'LOW')
LOW(r'LOW'),
@JsonValue(r'MEDIUM')
MEDIUM(r'MEDIUM'),
@JsonValue(r'HIGH')
HIGH(r'HIGH');

const ApiAiTutorChatPost200ResponseAllOfDataRiskSeverityEnum(this.value);

final String value;

@override
String toString() => value;
}


