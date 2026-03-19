//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'api_users_volunteers_id_suspend_patch_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ApiUsersVolunteersIdSuspendPatchRequest {
  /// Returns a new [ApiUsersVolunteersIdSuspendPatchRequest] instance.
  ApiUsersVolunteersIdSuspendPatchRequest({

     this.suspended,
  });

  @JsonKey(
    
    name: r'suspended',
    required: false,
    includeIfNull: false,
  )


  final bool? suspended;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ApiUsersVolunteersIdSuspendPatchRequest &&
      other.suspended == suspended;

    @override
    int get hashCode =>
        (suspended == null ? 0 : suspended.hashCode);

  factory ApiUsersVolunteersIdSuspendPatchRequest.fromJson(Map<String, dynamic> json) => _$ApiUsersVolunteersIdSuspendPatchRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ApiUsersVolunteersIdSuspendPatchRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

