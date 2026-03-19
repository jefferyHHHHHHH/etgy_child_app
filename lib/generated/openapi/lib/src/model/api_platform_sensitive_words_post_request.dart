//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'api_platform_sensitive_words_post_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ApiPlatformSensitiveWordsPostRequest {
  /// Returns a new [ApiPlatformSensitiveWordsPostRequest] instance.
  ApiPlatformSensitiveWordsPostRequest({

    required  this.word,

     this.isActive,
  });

  @JsonKey(
    
    name: r'word',
    required: true,
    includeIfNull: false,
  )


  final String word;



  @JsonKey(
    
    name: r'isActive',
    required: false,
    includeIfNull: false,
  )


  final bool? isActive;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ApiPlatformSensitiveWordsPostRequest &&
      other.word == word &&
      other.isActive == isActive;

    @override
    int get hashCode =>
        word.hashCode +
        (isActive == null ? 0 : isActive.hashCode);

  factory ApiPlatformSensitiveWordsPostRequest.fromJson(Map<String, dynamic> json) => _$ApiPlatformSensitiveWordsPostRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ApiPlatformSensitiveWordsPostRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

