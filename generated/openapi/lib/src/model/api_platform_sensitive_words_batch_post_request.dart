//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'api_platform_sensitive_words_batch_post_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ApiPlatformSensitiveWordsBatchPostRequest {
  /// Returns a new [ApiPlatformSensitiveWordsBatchPostRequest] instance.
  ApiPlatformSensitiveWordsBatchPostRequest({

    required  this.words,

     this.overwrite,
  });

  @JsonKey(
    
    name: r'words',
    required: true,
    includeIfNull: false,
  )


  final List<String> words;



  @JsonKey(
    
    name: r'overwrite',
    required: false,
    includeIfNull: false,
  )


  final bool? overwrite;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ApiPlatformSensitiveWordsBatchPostRequest &&
      other.words == words &&
      other.overwrite == overwrite;

    @override
    int get hashCode =>
        words.hashCode +
        (overwrite == null ? 0 : overwrite.hashCode);

  factory ApiPlatformSensitiveWordsBatchPostRequest.fromJson(Map<String, dynamic> json) => _$ApiPlatformSensitiveWordsBatchPostRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ApiPlatformSensitiveWordsBatchPostRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

