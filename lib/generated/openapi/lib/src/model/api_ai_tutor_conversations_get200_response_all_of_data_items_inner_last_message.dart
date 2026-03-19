//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'api_ai_tutor_conversations_get200_response_all_of_data_items_inner_last_message.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ApiAiTutorConversationsGet200ResponseAllOfDataItemsInnerLastMessage {
  /// Returns a new [ApiAiTutorConversationsGet200ResponseAllOfDataItemsInnerLastMessage] instance.
  ApiAiTutorConversationsGet200ResponseAllOfDataItemsInnerLastMessage({

    required  this.role,

    required  this.content,
  });

  @JsonKey(
    
    name: r'role',
    required: true,
    includeIfNull: false,
  )


  final ApiAiTutorConversationsGet200ResponseAllOfDataItemsInnerLastMessageRoleEnum role;



  @JsonKey(
    
    name: r'content',
    required: true,
    includeIfNull: false,
  )


  final String content;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ApiAiTutorConversationsGet200ResponseAllOfDataItemsInnerLastMessage &&
      other.role == role &&
      other.content == content;

    @override
    int get hashCode =>
        role.hashCode +
        content.hashCode;

  factory ApiAiTutorConversationsGet200ResponseAllOfDataItemsInnerLastMessage.fromJson(Map<String, dynamic> json) => _$ApiAiTutorConversationsGet200ResponseAllOfDataItemsInnerLastMessageFromJson(json);

  Map<String, dynamic> toJson() => _$ApiAiTutorConversationsGet200ResponseAllOfDataItemsInnerLastMessageToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}


enum ApiAiTutorConversationsGet200ResponseAllOfDataItemsInnerLastMessageRoleEnum {
@JsonValue(r'SYSTEM')
SYSTEM(r'SYSTEM'),
@JsonValue(r'USER')
USER(r'USER'),
@JsonValue(r'ASSISTANT')
ASSISTANT(r'ASSISTANT');

const ApiAiTutorConversationsGet200ResponseAllOfDataItemsInnerLastMessageRoleEnum(this.value);

final String value;

@override
String toString() => value;
}


