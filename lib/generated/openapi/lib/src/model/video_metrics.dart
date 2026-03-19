//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'video_metrics.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class VideoMetrics {
  /// Returns a new [VideoMetrics] instance.
  VideoMetrics({

    required  this.playCount,

    required  this.likeCount,

    required  this.favCount,
  });

  @JsonKey(
    
    name: r'playCount',
    required: true,
    includeIfNull: false,
  )


  final int playCount;



  @JsonKey(
    
    name: r'likeCount',
    required: true,
    includeIfNull: false,
  )


  final int likeCount;



  @JsonKey(
    
    name: r'favCount',
    required: true,
    includeIfNull: false,
  )


  final int favCount;





    @override
    bool operator ==(Object other) => identical(this, other) || other is VideoMetrics &&
      other.playCount == playCount &&
      other.likeCount == likeCount &&
      other.favCount == favCount;

    @override
    int get hashCode =>
        playCount.hashCode +
        likeCount.hashCode +
        favCount.hashCode;

  factory VideoMetrics.fromJson(Map<String, dynamic> json) => _$VideoMetricsFromJson(json);

  Map<String, dynamic> toJson() => _$VideoMetricsToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

