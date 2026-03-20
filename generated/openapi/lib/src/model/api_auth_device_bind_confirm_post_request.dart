//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:etgy_openapi_client/src/model/api_auth_device_bind_confirm_post_request_device_info.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'api_auth_device_bind_confirm_post_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ApiAuthDeviceBindConfirmPostRequest {
  /// Returns a new [ApiAuthDeviceBindConfirmPostRequest] instance.
  ApiAuthDeviceBindConfirmPostRequest({

    required  this.bindToken,

     this.deviceInfo,
  });

      /// 登录返回的 bindToken（短期有效）
  @JsonKey(
    
    name: r'bindToken',
    required: true,
    includeIfNull: false,
  )


  final String bindToken;



  @JsonKey(
    
    name: r'deviceInfo',
    required: false,
    includeIfNull: false,
  )


  final ApiAuthDeviceBindConfirmPostRequestDeviceInfo? deviceInfo;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ApiAuthDeviceBindConfirmPostRequest &&
      other.bindToken == bindToken &&
      other.deviceInfo == deviceInfo;

    @override
    int get hashCode =>
        bindToken.hashCode +
        deviceInfo.hashCode;

  factory ApiAuthDeviceBindConfirmPostRequest.fromJson(Map<String, dynamic> json) => _$ApiAuthDeviceBindConfirmPostRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ApiAuthDeviceBindConfirmPostRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

