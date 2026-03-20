//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'api_users_volunteers_id_password_post_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ApiUsersVolunteersIdPasswordPostRequest {
  /// Returns a new [ApiUsersVolunteersIdPasswordPostRequest] instance.
  ApiUsersVolunteersIdPasswordPostRequest({

    required  this.newPassword,
  });

  @JsonKey(
    
    name: r'newPassword',
    required: true,
    includeIfNull: false,
  )


  final String newPassword;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ApiUsersVolunteersIdPasswordPostRequest &&
      other.newPassword == newPassword;

    @override
    int get hashCode =>
        newPassword.hashCode;

  factory ApiUsersVolunteersIdPasswordPostRequest.fromJson(Map<String, dynamic> json) => _$ApiUsersVolunteersIdPasswordPostRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ApiUsersVolunteersIdPasswordPostRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

