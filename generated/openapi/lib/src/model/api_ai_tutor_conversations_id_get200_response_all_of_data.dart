//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:etgy_openapi_client/src/model/api_ai_tutor_conversations_id_get200_response_all_of_data_messages_inner.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'api_ai_tutor_conversations_id_get200_response_all_of_data.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ApiAiTutorConversationsIdGet200ResponseAllOfData {
  /// Returns a new [ApiAiTutorConversationsIdGet200ResponseAllOfData] instance.
  ApiAiTutorConversationsIdGet200ResponseAllOfData({

    required  this.id,

    required  this.userId,

    required  this.mode,

    required  this.createdAt,

    required  this.updatedAt,

    required  this.messages,
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
    
    name: r'userId',
    required: true,
    includeIfNull: false,
  )


  final int userId;



  @JsonKey(
    
    name: r'mode',
    required: true,
    includeIfNull: false,
  )


  final ApiAiTutorConversationsIdGet200ResponseAllOfDataModeEnum mode;



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
    
    name: r'messages',
    required: true,
    includeIfNull: false,
  )


  final List<ApiAiTutorConversationsIdGet200ResponseAllOfDataMessagesInner> messages;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ApiAiTutorConversationsIdGet200ResponseAllOfData &&
      other.id == id &&
      other.userId == userId &&
      other.mode == mode &&
      other.createdAt == createdAt &&
      other.updatedAt == updatedAt &&
      other.messages == messages;

    @override
    int get hashCode =>
        id.hashCode +
        userId.hashCode +
        mode.hashCode +
        createdAt.hashCode +
        updatedAt.hashCode +
        messages.hashCode;

  factory ApiAiTutorConversationsIdGet200ResponseAllOfData.fromJson(Map<String, dynamic> json) => _$ApiAiTutorConversationsIdGet200ResponseAllOfDataFromJson(json);

  Map<String, dynamic> toJson() => _$ApiAiTutorConversationsIdGet200ResponseAllOfDataToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}


enum ApiAiTutorConversationsIdGet200ResponseAllOfDataModeEnum {
@JsonValue(r'STUDY')
STUDY(r'STUDY'),
@JsonValue(r'EMOTION')
EMOTION(r'EMOTION');

const ApiAiTutorConversationsIdGet200ResponseAllOfDataModeEnum(this.value);

final String value;

@override
String toString() => value;
}


