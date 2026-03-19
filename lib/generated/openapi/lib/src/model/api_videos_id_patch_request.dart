//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'api_videos_id_patch_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ApiVideosIdPatchRequest {
  /// Returns a new [ApiVideosIdPatchRequest] instance.
  ApiVideosIdPatchRequest({

     this.title,

     this.url,

     this.intro,

     this.coverUrl,

     this.duration,

     this.gradeRange,

     this.subjectTag,
  });

  @JsonKey(
    
    name: r'title',
    required: false,
    includeIfNull: false,
  )


  final String? title;



  @JsonKey(
    
    name: r'url',
    required: false,
    includeIfNull: false,
  )


  final String? url;



  @JsonKey(
    
    name: r'intro',
    required: false,
    includeIfNull: false,
  )


  final String? intro;



  @JsonKey(
    
    name: r'coverUrl',
    required: false,
    includeIfNull: false,
  )


  final String? coverUrl;



          // minimum: 0
  @JsonKey(
    
    name: r'duration',
    required: false,
    includeIfNull: false,
  )


  final int? duration;



  @JsonKey(
    
    name: r'gradeRange',
    required: false,
    includeIfNull: false,
  )


  final String? gradeRange;



  @JsonKey(
    
    name: r'subjectTag',
    required: false,
    includeIfNull: false,
  )


  final String? subjectTag;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ApiVideosIdPatchRequest &&
      other.title == title &&
      other.url == url &&
      other.intro == intro &&
      other.coverUrl == coverUrl &&
      other.duration == duration &&
      other.gradeRange == gradeRange &&
      other.subjectTag == subjectTag;

    @override
    int get hashCode =>
        title.hashCode +
        url.hashCode +
        intro.hashCode +
        coverUrl.hashCode +
        duration.hashCode +
        gradeRange.hashCode +
        subjectTag.hashCode;

  factory ApiVideosIdPatchRequest.fromJson(Map<String, dynamic> json) => _$ApiVideosIdPatchRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ApiVideosIdPatchRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

