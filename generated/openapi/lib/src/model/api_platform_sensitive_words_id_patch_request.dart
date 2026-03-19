//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'api_platform_sensitive_words_id_patch_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ApiPlatformSensitiveWordsIdPatchRequest {
  /// Returns a new [ApiPlatformSensitiveWordsIdPatchRequest] instance.
  ApiPlatformSensitiveWordsIdPatchRequest({

     this.isActive,
  });

  @JsonKey(
    
    name: r'isActive',
    required: false,
    includeIfNull: false,
  )


  final bool? isActive;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ApiPlatformSensitiveWordsIdPatchRequest &&
      other.isActive == isActive;

    @override
    int get hashCode =>
        (isActive == null ? 0 : isActive.hashCode);

  factory ApiPlatformSensitiveWordsIdPatchRequest.fromJson(Map<String, dynamic> json) => _$ApiPlatformSensitiveWordsIdPatchRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ApiPlatformSensitiveWordsIdPatchRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

