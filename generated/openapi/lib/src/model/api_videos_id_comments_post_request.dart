//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'api_videos_id_comments_post_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ApiVideosIdCommentsPostRequest {
  /// Returns a new [ApiVideosIdCommentsPostRequest] instance.
  ApiVideosIdCommentsPostRequest({

    required  this.content,
  });

  @JsonKey(
    
    name: r'content',
    required: true,
    includeIfNull: false,
  )


  final String content;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ApiVideosIdCommentsPostRequest &&
      other.content == content;

    @override
    int get hashCode =>
        content.hashCode;

  factory ApiVideosIdCommentsPostRequest.fromJson(Map<String, dynamic> json) => _$ApiVideosIdCommentsPostRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ApiVideosIdCommentsPostRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

