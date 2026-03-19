//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'api_videos_id_watch_post_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ApiVideosIdWatchPostRequest {
  /// Returns a new [ApiVideosIdWatchPostRequest] instance.
  ApiVideosIdWatchPostRequest({

     this.lastPositionSec = 0,

     this.watchedSeconds = 0,

     this.completed,
  });

          // minimum: 0
  @JsonKey(
    defaultValue: 0,
    name: r'lastPositionSec',
    required: false,
    includeIfNull: false,
  )


  final int? lastPositionSec;



      /// 本次增量观看秒数（delta）
          // minimum: 0
  @JsonKey(
    defaultValue: 0,
    name: r'watchedSeconds',
    required: false,
    includeIfNull: false,
  )


  final int? watchedSeconds;



  @JsonKey(
    
    name: r'completed',
    required: false,
    includeIfNull: false,
  )


  final bool? completed;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ApiVideosIdWatchPostRequest &&
      other.lastPositionSec == lastPositionSec &&
      other.watchedSeconds == watchedSeconds &&
      other.completed == completed;

    @override
    int get hashCode =>
        (lastPositionSec == null ? 0 : lastPositionSec.hashCode) +
        (watchedSeconds == null ? 0 : watchedSeconds.hashCode) +
        (completed == null ? 0 : completed.hashCode);

  factory ApiVideosIdWatchPostRequest.fromJson(Map<String, dynamic> json) => _$ApiVideosIdWatchPostRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ApiVideosIdWatchPostRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

