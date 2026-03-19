//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'api_live_id_finish_post_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ApiLiveIdFinishPostRequest {
  /// Returns a new [ApiLiveIdFinishPostRequest] instance.
  ApiLiveIdFinishPostRequest({

     this.replayVideoId,
  });

          // minimum: 0
  @JsonKey(
    
    name: r'replayVideoId',
    required: false,
    includeIfNull: false,
  )


  final int? replayVideoId;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ApiLiveIdFinishPostRequest &&
      other.replayVideoId == replayVideoId;

    @override
    int get hashCode =>
        replayVideoId.hashCode;

  factory ApiLiveIdFinishPostRequest.fromJson(Map<String, dynamic> json) => _$ApiLiveIdFinishPostRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ApiLiveIdFinishPostRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

