//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'api_videos_id_offline_post_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ApiVideosIdOfflinePostRequest {
  /// Returns a new [ApiVideosIdOfflinePostRequest] instance.
  ApiVideosIdOfflinePostRequest({

     this.reason,
  });

  @JsonKey(
    
    name: r'reason',
    required: false,
    includeIfNull: false,
  )


  final String? reason;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ApiVideosIdOfflinePostRequest &&
      other.reason == reason;

    @override
    int get hashCode =>
        reason.hashCode;

  factory ApiVideosIdOfflinePostRequest.fromJson(Map<String, dynamic> json) => _$ApiVideosIdOfflinePostRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ApiVideosIdOfflinePostRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

