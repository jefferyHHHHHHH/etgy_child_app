//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:etgy_openapi_client/src/model/admin_video_comment_video_college.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'admin_video_comment_video.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class AdminVideoCommentVideo {
  /// Returns a new [AdminVideoCommentVideo] instance.
  AdminVideoCommentVideo({

    required  this.id,

    required  this.title,

    required  this.collegeId,

     this.college,
  });

  @JsonKey(
    
    name: r'id',
    required: true,
    includeIfNull: false,
  )


  final int id;



  @JsonKey(
    
    name: r'title',
    required: true,
    includeIfNull: false,
  )


  final String title;



  @JsonKey(
    
    name: r'collegeId',
    required: true,
    includeIfNull: false,
  )


  final int collegeId;



  @JsonKey(
    
    name: r'college',
    required: false,
    includeIfNull: false,
  )


  final AdminVideoCommentVideoCollege? college;





    @override
    bool operator ==(Object other) => identical(this, other) || other is AdminVideoCommentVideo &&
      other.id == id &&
      other.title == title &&
      other.collegeId == collegeId &&
      other.college == college;

    @override
    int get hashCode =>
        id.hashCode +
        title.hashCode +
        collegeId.hashCode +
        college.hashCode;

  factory AdminVideoCommentVideo.fromJson(Map<String, dynamic> json) => _$AdminVideoCommentVideoFromJson(json);

  Map<String, dynamic> toJson() => _$AdminVideoCommentVideoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

