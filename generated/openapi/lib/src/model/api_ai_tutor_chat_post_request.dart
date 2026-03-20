//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'api_ai_tutor_chat_post_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ApiAiTutorChatPostRequest {
  /// Returns a new [ApiAiTutorChatPostRequest] instance.
  ApiAiTutorChatPostRequest({

    this.mode = ApiAiTutorChatPostRequestModeEnum.study,

    required  this.message,

     this.conversationId,
  });

  @JsonKey(
    defaultValue: ApiAiTutorChatPostRequestModeEnum.study,
    name: r'mode',
    required: false,
    includeIfNull: false,
  )


  final ApiAiTutorChatPostRequestModeEnum? mode;



  @JsonKey(
    
    name: r'message',
    required: true,
    includeIfNull: false,
  )


  final String message;



          // minimum: 0
  @JsonKey(
    
    name: r'conversationId',
    required: false,
    includeIfNull: false,
  )


  final int? conversationId;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ApiAiTutorChatPostRequest &&
      other.mode == mode &&
      other.message == message &&
      other.conversationId == conversationId;

    @override
    int get hashCode =>
        mode.hashCode +
        message.hashCode +
        conversationId.hashCode;

  factory ApiAiTutorChatPostRequest.fromJson(Map<String, dynamic> json) => _$ApiAiTutorChatPostRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ApiAiTutorChatPostRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}


enum ApiAiTutorChatPostRequestModeEnum {
@JsonValue(r'study')
study(r'study'),
@JsonValue(r'emotion')
emotion(r'emotion');

const ApiAiTutorChatPostRequestModeEnum(this.value);

final String value;

@override
String toString() => value;
}


