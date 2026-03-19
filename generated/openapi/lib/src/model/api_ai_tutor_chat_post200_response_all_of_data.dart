//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:etgy_openapi_client/src/model/api_ai_tutor_chat_post200_response_all_of_data_risk.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'api_ai_tutor_chat_post200_response_all_of_data.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ApiAiTutorChatPost200ResponseAllOfData {
  /// Returns a new [ApiAiTutorChatPost200ResponseAllOfData] instance.
  ApiAiTutorChatPost200ResponseAllOfData({

    required  this.conversationId,

    required  this.risk,

    required  this.answer,
  });

          // minimum: 0
  @JsonKey(
    
    name: r'conversationId',
    required: true,
    includeIfNull: false,
  )


  final int conversationId;



  @JsonKey(
    
    name: r'risk',
    required: true,
    includeIfNull: false,
  )


  final ApiAiTutorChatPost200ResponseAllOfDataRisk risk;



  @JsonKey(
    
    name: r'answer',
    required: true,
    includeIfNull: false,
  )


  final String answer;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ApiAiTutorChatPost200ResponseAllOfData &&
      other.conversationId == conversationId &&
      other.risk == risk &&
      other.answer == answer;

    @override
    int get hashCode =>
        conversationId.hashCode +
        risk.hashCode +
        answer.hashCode;

  factory ApiAiTutorChatPost200ResponseAllOfData.fromJson(Map<String, dynamic> json) => _$ApiAiTutorChatPost200ResponseAllOfDataFromJson(json);

  Map<String, dynamic> toJson() => _$ApiAiTutorChatPost200ResponseAllOfDataToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

