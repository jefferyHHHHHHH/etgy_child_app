//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'api_ai_risk_alerts_get200_response_all_of_data_items_inner_college.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerCollege {
  /// Returns a new [ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerCollege] instance.
  ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerCollege({

    required  this.id,

    required  this.name,
  });

          // minimum: 0
  @JsonKey(
    
    name: r'id',
    required: true,
    includeIfNull: false,
  )


  final int id;



  @JsonKey(
    
    name: r'name',
    required: true,
    includeIfNull: false,
  )


  final String name;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerCollege &&
      other.id == id &&
      other.name == name;

    @override
    int get hashCode =>
        id.hashCode +
        name.hashCode;

  factory ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerCollege.fromJson(Map<String, dynamic> json) => _$ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerCollegeFromJson(json);

  Map<String, dynamic> toJson() => _$ApiAiRiskAlertsGet200ResponseAllOfDataItemsInnerCollegeToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

