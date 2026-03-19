//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:etgy_openapi_client/src/model/api_videos_watch_logs_get200_response_all_of_data.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'api_videos_watch_logs_get200_response.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ApiVideosWatchLogsGet200Response {
  /// Returns a new [ApiVideosWatchLogsGet200Response] instance.
  ApiVideosWatchLogsGet200Response({

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


  final ApiVideosWatchLogsGet200ResponseAllOfData data;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ApiVideosWatchLogsGet200Response &&
      other.code == code &&
      other.message == message &&
      other.data == data;

    @override
    int get hashCode =>
        code.hashCode +
        message.hashCode +
        data.hashCode;

  factory ApiVideosWatchLogsGet200Response.fromJson(Map<String, dynamic> json) => _$ApiVideosWatchLogsGet200ResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ApiVideosWatchLogsGet200ResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

