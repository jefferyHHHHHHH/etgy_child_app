//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'api_platform_college_admins_id_patch_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ApiPlatformCollegeAdminsIdPatchRequest {
  /// Returns a new [ApiPlatformCollegeAdminsIdPatchRequest] instance.
  ApiPlatformCollegeAdminsIdPatchRequest({

     this.realName,

     this.collegeId,
  });

  @JsonKey(
    
    name: r'realName',
    required: false,
    includeIfNull: false,
  )


  final String? realName;



          // minimum: 0
  @JsonKey(
    
    name: r'collegeId',
    required: false,
    includeIfNull: false,
  )


  final int? collegeId;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ApiPlatformCollegeAdminsIdPatchRequest &&
      other.realName == realName &&
      other.collegeId == collegeId;

    @override
    int get hashCode =>
        realName.hashCode +
        collegeId.hashCode;

  factory ApiPlatformCollegeAdminsIdPatchRequest.fromJson(Map<String, dynamic> json) => _$ApiPlatformCollegeAdminsIdPatchRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ApiPlatformCollegeAdminsIdPatchRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

