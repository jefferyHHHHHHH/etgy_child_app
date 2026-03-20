//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'api_auth_device_bind_confirm_post_request_device_info.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ApiAuthDeviceBindConfirmPostRequestDeviceInfo {
  /// Returns a new [ApiAuthDeviceBindConfirmPostRequestDeviceInfo] instance.
  ApiAuthDeviceBindConfirmPostRequestDeviceInfo({

     this.platform,

     this.model,

     this.osVersion,

     this.appVersion,
  });

  @JsonKey(
    
    name: r'platform',
    required: false,
    includeIfNull: false,
  )


  final String? platform;



  @JsonKey(
    
    name: r'model',
    required: false,
    includeIfNull: false,
  )


  final String? model;



  @JsonKey(
    
    name: r'osVersion',
    required: false,
    includeIfNull: false,
  )


  final String? osVersion;



  @JsonKey(
    
    name: r'appVersion',
    required: false,
    includeIfNull: false,
  )


  final String? appVersion;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ApiAuthDeviceBindConfirmPostRequestDeviceInfo &&
      other.platform == platform &&
      other.model == model &&
      other.osVersion == osVersion &&
      other.appVersion == appVersion;

    @override
    int get hashCode =>
        platform.hashCode +
        model.hashCode +
        osVersion.hashCode +
        appVersion.hashCode;

  factory ApiAuthDeviceBindConfirmPostRequestDeviceInfo.fromJson(Map<String, dynamic> json) => _$ApiAuthDeviceBindConfirmPostRequestDeviceInfoFromJson(json);

  Map<String, dynamic> toJson() => _$ApiAuthDeviceBindConfirmPostRequestDeviceInfoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

