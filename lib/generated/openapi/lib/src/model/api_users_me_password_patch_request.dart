//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'api_users_me_password_patch_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ApiUsersMePasswordPatchRequest {
  /// Returns a new [ApiUsersMePasswordPatchRequest] instance.
  ApiUsersMePasswordPatchRequest({

    required  this.oldPassword,

    required  this.newPassword,
  });

  @JsonKey(
    
    name: r'oldPassword',
    required: true,
    includeIfNull: false,
  )


  final String oldPassword;



  @JsonKey(
    
    name: r'newPassword',
    required: true,
    includeIfNull: false,
  )


  final String newPassword;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ApiUsersMePasswordPatchRequest &&
      other.oldPassword == oldPassword &&
      other.newPassword == newPassword;

    @override
    int get hashCode =>
        oldPassword.hashCode +
        newPassword.hashCode;

  factory ApiUsersMePasswordPatchRequest.fromJson(Map<String, dynamic> json) => _$ApiUsersMePasswordPatchRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ApiUsersMePasswordPatchRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

