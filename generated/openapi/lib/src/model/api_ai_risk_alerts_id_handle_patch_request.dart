//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'api_ai_risk_alerts_id_handle_patch_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ApiAiRiskAlertsIdHandlePatchRequest {
  /// Returns a new [ApiAiRiskAlertsIdHandlePatchRequest] instance.
  ApiAiRiskAlertsIdHandlePatchRequest({

     this.note,
  });

  @JsonKey(
    
    name: r'note',
    required: false,
    includeIfNull: false,
  )


  final String? note;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ApiAiRiskAlertsIdHandlePatchRequest &&
      other.note == note;

    @override
    int get hashCode =>
        note.hashCode;

  factory ApiAiRiskAlertsIdHandlePatchRequest.fromJson(Map<String, dynamic> json) => _$ApiAiRiskAlertsIdHandlePatchRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ApiAiRiskAlertsIdHandlePatchRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

