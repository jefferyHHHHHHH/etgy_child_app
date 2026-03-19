//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'api_platform_content_policy_put_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ApiPlatformContentPolicyPutRequest {
  /// Returns a new [ApiPlatformContentPolicyPutRequest] instance.
  ApiPlatformContentPolicyPutRequest({

     this.commentsEnabled,

     this.liveChatEnabled,

     this.moderationAction,
  });

  @JsonKey(
    
    name: r'commentsEnabled',
    required: false,
    includeIfNull: false,
  )


  final bool? commentsEnabled;



  @JsonKey(
    
    name: r'liveChatEnabled',
    required: false,
    includeIfNull: false,
  )


  final bool? liveChatEnabled;



  @JsonKey(
    
    name: r'moderationAction',
    required: false,
    includeIfNull: false,
  )


  final ApiPlatformContentPolicyPutRequestModerationActionEnum? moderationAction;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ApiPlatformContentPolicyPutRequest &&
      other.commentsEnabled == commentsEnabled &&
      other.liveChatEnabled == liveChatEnabled &&
      other.moderationAction == moderationAction;

    @override
    int get hashCode =>
        (commentsEnabled == null ? 0 : commentsEnabled.hashCode) +
        (liveChatEnabled == null ? 0 : liveChatEnabled.hashCode) +
        moderationAction.hashCode;

  factory ApiPlatformContentPolicyPutRequest.fromJson(Map<String, dynamic> json) => _$ApiPlatformContentPolicyPutRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ApiPlatformContentPolicyPutRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}


enum ApiPlatformContentPolicyPutRequestModerationActionEnum {
@JsonValue(r'REJECT')
REJECT(r'REJECT'),
@JsonValue(r'MASK')
MASK(r'MASK');

const ApiPlatformContentPolicyPutRequestModerationActionEnum(this.value);

final String value;

@override
String toString() => value;
}


