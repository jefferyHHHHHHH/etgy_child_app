//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'api_live_id_messages_post_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ApiLiveIdMessagesPostRequest {
  /// Returns a new [ApiLiveIdMessagesPostRequest] instance.
  ApiLiveIdMessagesPostRequest({

     this.type,

    required  this.content,
  });

  @JsonKey(
    
    name: r'type',
    required: false,
    includeIfNull: false,
  )


  final ApiLiveIdMessagesPostRequestTypeEnum? type;



  @JsonKey(
    
    name: r'content',
    required: true,
    includeIfNull: false,
  )


  final String content;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ApiLiveIdMessagesPostRequest &&
      other.type == type &&
      other.content == content;

    @override
    int get hashCode =>
        type.hashCode +
        content.hashCode;

  factory ApiLiveIdMessagesPostRequest.fromJson(Map<String, dynamic> json) => _$ApiLiveIdMessagesPostRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ApiLiveIdMessagesPostRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}


enum ApiLiveIdMessagesPostRequestTypeEnum {
@JsonValue(r'CHAT')
CHAT(r'CHAT'),
@JsonValue(r'QA')
QA(r'QA');

const ApiLiveIdMessagesPostRequestTypeEnum(this.value);

final String value;

@override
String toString() => value;
}


