//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'video_media_urls.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class VideoMediaUrls {
  /// Returns a new [VideoMediaUrls] instance.
  VideoMediaUrls({

    required  this.url,

    required  this.coverUrl,

    required  this.expiresInSeconds,
  });

      /// Presigned GET URL for video object
  @JsonKey(
    
    name: r'url',
    required: true,
    includeIfNull: false,
  )


  final String url;



      /// Presigned GET URL for cover image object
  @JsonKey(
    
    name: r'coverUrl',
    required: true,
    includeIfNull: true,
  )


  final String? coverUrl;



      /// Presign expiration in seconds
          // minimum: 0
  @JsonKey(
    
    name: r'expiresInSeconds',
    required: true,
    includeIfNull: false,
  )


  final int expiresInSeconds;





    @override
    bool operator ==(Object other) => identical(this, other) || other is VideoMediaUrls &&
      other.url == url &&
      other.coverUrl == coverUrl &&
      other.expiresInSeconds == expiresInSeconds;

    @override
    int get hashCode =>
        url.hashCode +
        (coverUrl == null ? 0 : coverUrl.hashCode) +
        expiresInSeconds.hashCode;

  factory VideoMediaUrls.fromJson(Map<String, dynamic> json) => _$VideoMediaUrlsFromJson(json);

  Map<String, dynamic> toJson() => _$VideoMediaUrlsToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

