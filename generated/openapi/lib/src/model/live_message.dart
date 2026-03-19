//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'live_message.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class LiveMessage {
  /// Returns a new [LiveMessage] instance.
  LiveMessage({

    required  this.id,

    required  this.liveId,

    required  this.senderId,

    required  this.type,

    required  this.content,

    required  this.createdAt,

     this.sender,
  });

  @JsonKey(
    
    name: r'id',
    required: true,
    includeIfNull: false,
  )


  final int id;



  @JsonKey(
    
    name: r'liveId',
    required: true,
    includeIfNull: false,
  )


  final int liveId;



  @JsonKey(
    
    name: r'senderId',
    required: true,
    includeIfNull: false,
  )


  final int senderId;



  @JsonKey(
    
    name: r'type',
    required: true,
    includeIfNull: false,
  )


  final LiveMessageTypeEnum type;



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



  @JsonKey(
    
    name: r'sender',
    required: false,
    includeIfNull: false,
  )


  final Object? sender;





    @override
    bool operator ==(Object other) => identical(this, other) || other is LiveMessage &&
      other.id == id &&
      other.liveId == liveId &&
      other.senderId == senderId &&
      other.type == type &&
      other.content == content &&
      other.createdAt == createdAt &&
      other.sender == sender;

    @override
    int get hashCode =>
        id.hashCode +
        liveId.hashCode +
        senderId.hashCode +
        type.hashCode +
        content.hashCode +
        createdAt.hashCode +
        (sender == null ? 0 : sender.hashCode);

  factory LiveMessage.fromJson(Map<String, dynamic> json) => _$LiveMessageFromJson(json);

  Map<String, dynamic> toJson() => _$LiveMessageToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}


enum LiveMessageTypeEnum {
@JsonValue(r'CHAT')
CHAT(r'CHAT'),
@JsonValue(r'QA')
QA(r'QA');

const LiveMessageTypeEnum(this.value);

final String value;

@override
String toString() => value;
}


