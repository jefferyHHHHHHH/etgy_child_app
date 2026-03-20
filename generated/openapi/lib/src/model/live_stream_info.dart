//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'live_stream_info.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class LiveStreamInfo {
  /// Returns a new [LiveStreamInfo] instance.
  LiveStreamInfo({

    required  this.liveId,

    required  this.pushUrl,

    required  this.pullUrl,
  });

          // minimum: 0
  @JsonKey(
    
    name: r'liveId',
    required: true,
    includeIfNull: false,
  )


  final int liveId;



  @JsonKey(
    
    name: r'pushUrl',
    required: true,
    includeIfNull: true,
  )


  final String? pushUrl;



  @JsonKey(
    
    name: r'pullUrl',
    required: true,
    includeIfNull: true,
  )


  final String? pullUrl;





    @override
    bool operator ==(Object other) => identical(this, other) || other is LiveStreamInfo &&
      other.liveId == liveId &&
      other.pushUrl == pushUrl &&
      other.pullUrl == pullUrl;

    @override
    int get hashCode =>
        liveId.hashCode +
        (pushUrl == null ? 0 : pushUrl.hashCode) +
        (pullUrl == null ? 0 : pullUrl.hashCode);

  factory LiveStreamInfo.fromJson(Map<String, dynamic> json) => _$LiveStreamInfoFromJson(json);

  Map<String, dynamic> toJson() => _$LiveStreamInfoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

