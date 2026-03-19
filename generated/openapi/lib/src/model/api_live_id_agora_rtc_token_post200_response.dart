//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:etgy_openapi_client/src/model/api_live_id_agora_rtc_token_post200_response_all_of_data.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'api_live_id_agora_rtc_token_post200_response.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ApiLiveIdAgoraRtcTokenPost200Response {
  /// Returns a new [ApiLiveIdAgoraRtcTokenPost200Response] instance.
  ApiLiveIdAgoraRtcTokenPost200Response({

    required  this.code,

    required  this.message,

    required  this.data,
  });

  @JsonKey(
    
    name: r'code',
    required: true,
    includeIfNull: false,
  )


  final int code;



  @JsonKey(
    
    name: r'message',
    required: true,
    includeIfNull: false,
  )


  final String message;



  @JsonKey(
    
    name: r'data',
    required: true,
    includeIfNull: false,
  )


  final ApiLiveIdAgoraRtcTokenPost200ResponseAllOfData data;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ApiLiveIdAgoraRtcTokenPost200Response &&
      other.code == code &&
      other.message == message &&
      other.data == data;

    @override
    int get hashCode =>
        code.hashCode +
        message.hashCode +
        data.hashCode;

  factory ApiLiveIdAgoraRtcTokenPost200Response.fromJson(Map<String, dynamic> json) => _$ApiLiveIdAgoraRtcTokenPost200ResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ApiLiveIdAgoraRtcTokenPost200ResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

