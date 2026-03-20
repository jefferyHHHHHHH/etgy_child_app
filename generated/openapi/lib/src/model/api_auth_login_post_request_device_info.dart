//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'api_auth_login_post_request_device_info.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ApiAuthLoginPostRequestDeviceInfo {
  /// Returns a new [ApiAuthLoginPostRequestDeviceInfo] instance.
  ApiAuthLoginPostRequestDeviceInfo({

     this.platform,

     this.model,

     this.osVersion,

     this.appVersion,
  });

      /// 平台（android/ios/etc.）
  @JsonKey(
    
    name: r'platform',
    required: false,
    includeIfNull: false,
  )


  final String? platform;



      /// 设备型号
  @JsonKey(
    
    name: r'model',
    required: false,
    includeIfNull: false,
  )


  final String? model;



      /// 系统版本
  @JsonKey(
    
    name: r'osVersion',
    required: false,
    includeIfNull: false,
  )


  final String? osVersion;



      /// App 版本号
  @JsonKey(
    
    name: r'appVersion',
    required: false,
    includeIfNull: false,
  )


  final String? appVersion;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ApiAuthLoginPostRequestDeviceInfo &&
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

  factory ApiAuthLoginPostRequestDeviceInfo.fromJson(Map<String, dynamic> json) => _$ApiAuthLoginPostRequestDeviceInfoFromJson(json);

  Map<String, dynamic> toJson() => _$ApiAuthLoginPostRequestDeviceInfoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

