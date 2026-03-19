//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:etgy_openapi_client/src/model/api_ai_tutor_conversations_get200_response_all_of_data_items_inner_last_message.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'api_ai_tutor_conversations_get200_response_all_of_data_items_inner.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ApiAiTutorConversationsGet200ResponseAllOfDataItemsInner {
  /// Returns a new [ApiAiTutorConversationsGet200ResponseAllOfDataItemsInner] instance.
  ApiAiTutorConversationsGet200ResponseAllOfDataItemsInner({

    required  this.id,

    required  this.mode,

    required  this.createdAt,

    required  this.updatedAt,

    required  this.lastMessage,
  });

          // minimum: 0
  @JsonKey(
    
    name: r'id',
    required: true,
    includeIfNull: false,
  )


  final int id;



  @JsonKey(
    
    name: r'mode',
    required: true,
    includeIfNull: false,
  )


  final ApiAiTutorConversationsGet200ResponseAllOfDataItemsInnerModeEnum mode;



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
    
    name: r'lastMessage',
    required: true,
    includeIfNull: true,
  )


  final ApiAiTutorConversationsGet200ResponseAllOfDataItemsInnerLastMessage? lastMessage;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ApiAiTutorConversationsGet200ResponseAllOfDataItemsInner &&
      other.id == id &&
      other.mode == mode &&
      other.createdAt == createdAt &&
      other.updatedAt == updatedAt &&
      other.lastMessage == lastMessage;

    @override
    int get hashCode =>
        id.hashCode +
        mode.hashCode +
        createdAt.hashCode +
        updatedAt.hashCode +
        (lastMessage == null ? 0 : lastMessage.hashCode);

  factory ApiAiTutorConversationsGet200ResponseAllOfDataItemsInner.fromJson(Map<String, dynamic> json) => _$ApiAiTutorConversationsGet200ResponseAllOfDataItemsInnerFromJson(json);

  Map<String, dynamic> toJson() => _$ApiAiTutorConversationsGet200ResponseAllOfDataItemsInnerToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}


enum ApiAiTutorConversationsGet200ResponseAllOfDataItemsInnerModeEnum {
@JsonValue(r'STUDY')
STUDY(r'STUDY'),
@JsonValue(r'EMOTION')
EMOTION(r'EMOTION');

const ApiAiTutorConversationsGet200ResponseAllOfDataItemsInnerModeEnum(this.value);

final String value;

@override
String toString() => value;
}


