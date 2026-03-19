//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'api_platform_content_policy_get200_response_all_of_data.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ApiPlatformContentPolicyGet200ResponseAllOfData {
  /// Returns a new [ApiPlatformContentPolicyGet200ResponseAllOfData] instance.
  ApiPlatformContentPolicyGet200ResponseAllOfData({

    required  this.commentsEnabled,

    required  this.liveChatEnabled,

    required  this.moderationAction,

    required  this.updatedAt,
  });

  @JsonKey(
    
    name: r'commentsEnabled',
    required: true,
    includeIfNull: false,
  )


  final bool commentsEnabled;



  @JsonKey(
    
    name: r'liveChatEnabled',
    required: true,
    includeIfNull: false,
  )


  final bool liveChatEnabled;



  @JsonKey(
    
    name: r'moderationAction',
    required: true,
    includeIfNull: false,
  )


  final ApiPlatformContentPolicyGet200ResponseAllOfDataModerationActionEnum moderationAction;



  @JsonKey(
    
    name: r'updatedAt',
    required: true,
    includeIfNull: false,
  )


  final String updatedAt;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ApiPlatformContentPolicyGet200ResponseAllOfData &&
      other.commentsEnabled == commentsEnabled &&
      other.liveChatEnabled == liveChatEnabled &&
      other.moderationAction == moderationAction &&
      other.updatedAt == updatedAt;

    @override
    int get hashCode =>
        commentsEnabled.hashCode +
        liveChatEnabled.hashCode +
        moderationAction.hashCode +
        updatedAt.hashCode;

  factory ApiPlatformContentPolicyGet200ResponseAllOfData.fromJson(Map<String, dynamic> json) => _$ApiPlatformContentPolicyGet200ResponseAllOfDataFromJson(json);

  Map<String, dynamic> toJson() => _$ApiPlatformContentPolicyGet200ResponseAllOfDataToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}


enum ApiPlatformContentPolicyGet200ResponseAllOfDataModerationActionEnum {
@JsonValue(r'REJECT')
REJECT(r'REJECT'),
@JsonValue(r'MASK')
MASK(r'MASK');

const ApiPlatformContentPolicyGet200ResponseAllOfDataModerationActionEnum(this.value);

final String value;

@override
String toString() => value;
}


