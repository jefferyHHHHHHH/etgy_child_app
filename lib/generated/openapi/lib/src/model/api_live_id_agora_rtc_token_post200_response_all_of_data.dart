//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'api_live_id_agora_rtc_token_post200_response_all_of_data.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ApiLiveIdAgoraRtcTokenPost200ResponseAllOfData {
  /// Returns a new [ApiLiveIdAgoraRtcTokenPost200ResponseAllOfData] instance.
  ApiLiveIdAgoraRtcTokenPost200ResponseAllOfData({

    required  this.appId,

    required  this.channelName,

    required  this.uid,

    required  this.role,

    required  this.token,

    required  this.expireAt,
  });

  @JsonKey(
    
    name: r'appId',
    required: true,
    includeIfNull: false,
  )


  final String appId;



  @JsonKey(
    
    name: r'channelName',
    required: true,
    includeIfNull: false,
  )


  final String channelName;



  @JsonKey(
    
    name: r'uid',
    required: true,
    includeIfNull: false,
  )


  final int uid;



  @JsonKey(
    
    name: r'role',
    required: true,
    includeIfNull: false,
  )


  final ApiLiveIdAgoraRtcTokenPost200ResponseAllOfDataRoleEnum role;



  @JsonKey(
    
    name: r'token',
    required: true,
    includeIfNull: false,
  )


  final String token;



  @JsonKey(
    
    name: r'expireAt',
    required: true,
    includeIfNull: false,
  )


  final int expireAt;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ApiLiveIdAgoraRtcTokenPost200ResponseAllOfData &&
      other.appId == appId &&
      other.channelName == channelName &&
      other.uid == uid &&
      other.role == role &&
      other.token == token &&
      other.expireAt == expireAt;

    @override
    int get hashCode =>
        appId.hashCode +
        channelName.hashCode +
        uid.hashCode +
        role.hashCode +
        token.hashCode +
        expireAt.hashCode;

  factory ApiLiveIdAgoraRtcTokenPost200ResponseAllOfData.fromJson(Map<String, dynamic> json) => _$ApiLiveIdAgoraRtcTokenPost200ResponseAllOfDataFromJson(json);

  Map<String, dynamic> toJson() => _$ApiLiveIdAgoraRtcTokenPost200ResponseAllOfDataToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}


enum ApiLiveIdAgoraRtcTokenPost200ResponseAllOfDataRoleEnum {
@JsonValue(r'publisher')
publisher(r'publisher'),
@JsonValue(r'subscriber')
subscriber(r'subscriber');

const ApiLiveIdAgoraRtcTokenPost200ResponseAllOfDataRoleEnum(this.value);

final String value;

@override
String toString() => value;
}


