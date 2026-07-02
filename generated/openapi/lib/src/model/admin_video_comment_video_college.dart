//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'admin_video_comment_video_college.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class AdminVideoCommentVideoCollege {
  /// Returns a new [AdminVideoCommentVideoCollege] instance.
  AdminVideoCommentVideoCollege({

    required  this.id,

    required  this.name,
  });

  @JsonKey(
    
    name: r'id',
    required: true,
    includeIfNull: false,
  )


  final int id;



  @JsonKey(
    
    name: r'name',
    required: true,
    includeIfNull: false,
  )


  final String name;





    @override
    bool operator ==(Object other) => identical(this, other) || other is AdminVideoCommentVideoCollege &&
      other.id == id &&
      other.name == name;

    @override
    int get hashCode =>
        id.hashCode +
        name.hashCode;

  factory AdminVideoCommentVideoCollege.fromJson(Map<String, dynamic> json) => _$AdminVideoCommentVideoCollegeFromJson(json);

  Map<String, dynamic> toJson() => _$AdminVideoCommentVideoCollegeToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

