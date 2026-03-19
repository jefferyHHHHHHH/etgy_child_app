//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'api_ai_tutor_conversations_id_get200_response_all_of_data_messages_inner.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ApiAiTutorConversationsIdGet200ResponseAllOfDataMessagesInner {
  /// Returns a new [ApiAiTutorConversationsIdGet200ResponseAllOfDataMessagesInner] instance.
  ApiAiTutorConversationsIdGet200ResponseAllOfDataMessagesInner({

    required  this.id,

    required  this.conversationId,

    required  this.role,

    required  this.content,

    required  this.createdAt,
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



  @JsonKey(
    
    name: r'role',
    required: true,
    includeIfNull: false,
  )


  final ApiAiTutorConversationsIdGet200ResponseAllOfDataMessagesInnerRoleEnum role;



  @JsonKey(
    
    name: r'content',
    required: true,
    includeIfNull: false,
  )


  final String content;



  @JsonKey(
    
    name: r'createdAt',
    required: true,
    includeIfNull: false,
  )


  final DateTime createdAt;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ApiAiTutorConversationsIdGet200ResponseAllOfDataMessagesInner &&
      other.id == id &&
      other.conversationId == conversationId &&
      other.role == role &&
      other.content == content &&
      other.createdAt == createdAt;

    @override
    int get hashCode =>
        id.hashCode +
        conversationId.hashCode +
        role.hashCode +
        content.hashCode +
        createdAt.hashCode;

  factory ApiAiTutorConversationsIdGet200ResponseAllOfDataMessagesInner.fromJson(Map<String, dynamic> json) => _$ApiAiTutorConversationsIdGet200ResponseAllOfDataMessagesInnerFromJson(json);

  Map<String, dynamic> toJson() => _$ApiAiTutorConversationsIdGet200ResponseAllOfDataMessagesInnerToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}


enum ApiAiTutorConversationsIdGet200ResponseAllOfDataMessagesInnerRoleEnum {
@JsonValue(r'SYSTEM')
SYSTEM(r'SYSTEM'),
@JsonValue(r'USER')
USER(r'USER'),
@JsonValue(r'ASSISTANT')
ASSISTANT(r'ASSISTANT');

const ApiAiTutorConversationsIdGet200ResponseAllOfDataMessagesInnerRoleEnum(this.value);

final String value;

@override
String toString() => value;
}


