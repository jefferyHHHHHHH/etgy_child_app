//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'api_oss_upload_url_post_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ApiOssUploadUrlPostRequest {
  /// Returns a new [ApiOssUploadUrlPostRequest] instance.
  ApiOssUploadUrlPostRequest({

     this.key,

     this.prefix = 'uploads',

     this.filename,

     this.contentType,

     this.expiresInSeconds,
  });

  @JsonKey(
    
    name: r'key',
    required: false,
    includeIfNull: false,
  )


  final String? key;



  @JsonKey(
    defaultValue: 'uploads',
    name: r'prefix',
    required: false,
    includeIfNull: false,
  )


  final String? prefix;



  @JsonKey(
    
    name: r'filename',
    required: false,
    includeIfNull: false,
  )


  final String? filename;



  @JsonKey(
    
    name: r'contentType',
    required: false,
    includeIfNull: false,
  )


  final String? contentType;



          // minimum: 0
  @JsonKey(
    
    name: r'expiresInSeconds',
    required: false,
    includeIfNull: false,
  )


  final int? expiresInSeconds;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ApiOssUploadUrlPostRequest &&
      other.key == key &&
      other.prefix == prefix &&
      other.filename == filename &&
      other.contentType == contentType &&
      other.expiresInSeconds == expiresInSeconds;

    @override
    int get hashCode =>
        key.hashCode +
        prefix.hashCode +
        filename.hashCode +
        contentType.hashCode +
        expiresInSeconds.hashCode;

  factory ApiOssUploadUrlPostRequest.fromJson(Map<String, dynamic> json) => _$ApiOssUploadUrlPostRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ApiOssUploadUrlPostRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

