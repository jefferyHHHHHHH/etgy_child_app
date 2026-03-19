//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'video_watch_log.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class VideoWatchLog {
  /// Returns a new [VideoWatchLog] instance.
  VideoWatchLog({

    required  this.id,

    required  this.videoId,

    required  this.userId,

    required  this.lastPositionSec,

    required  this.watchedSeconds,

    required  this.completed,

    required  this.createdAt,

    required  this.updatedAt,
  });

  @JsonKey(
    
    name: r'id',
    required: true,
    includeIfNull: false,
  )


  final int id;



  @JsonKey(
    
    name: r'videoId',
    required: true,
    includeIfNull: false,
  )


  final int videoId;



  @JsonKey(
    
    name: r'userId',
    required: true,
    includeIfNull: false,
  )


  final int userId;



  @JsonKey(
    
    name: r'lastPositionSec',
    required: true,
    includeIfNull: false,
  )


  final int lastPositionSec;



  @JsonKey(
    
    name: r'watchedSeconds',
    required: true,
    includeIfNull: false,
  )


  final int watchedSeconds;



  @JsonKey(
    
    name: r'completed',
    required: true,
    includeIfNull: false,
  )


  final bool completed;



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





    @override
    bool operator ==(Object other) => identical(this, other) || other is VideoWatchLog &&
      other.id == id &&
      other.videoId == videoId &&
      other.userId == userId &&
      other.lastPositionSec == lastPositionSec &&
      other.watchedSeconds == watchedSeconds &&
      other.completed == completed &&
      other.createdAt == createdAt &&
      other.updatedAt == updatedAt;

    @override
    int get hashCode =>
        id.hashCode +
        videoId.hashCode +
        userId.hashCode +
        lastPositionSec.hashCode +
        watchedSeconds.hashCode +
        completed.hashCode +
        createdAt.hashCode +
        updatedAt.hashCode;

  factory VideoWatchLog.fromJson(Map<String, dynamic> json) => _$VideoWatchLogFromJson(json);

  Map<String, dynamic> toJson() => _$VideoWatchLogToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

