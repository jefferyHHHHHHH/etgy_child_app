# etgy_openapi_client.model.ApiAuthLoginPostRequest

## Load the model package
```dart
import 'package:etgy_openapi_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**username** | **String** |  | 
**password** | **String** |  | 
**role** | **String** | 登录角色（可选；不传则由后端按账号类型判定/默认） | [optional] 
**deviceId** | **String** | 设备唯一标识（儿童端设备绑定） | [optional] 
**deviceInfo** | [**ApiAuthLoginPostRequestDeviceInfo**](ApiAuthLoginPostRequestDeviceInfo.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


