# etgy_openapi_client.api.AuthApi

## Load the API package
```dart
import 'package:etgy_openapi_client/api.dart';
```

All URIs are relative to *http://8.148.215.20*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiAuthDeviceBindConfirmPost**](AuthApi.md#apiauthdevicebindconfirmpost) | **POST** /api/auth/device/bind/confirm | 确认设备绑定（儿童端）
[**apiAuthLoginPost**](AuthApi.md#apiauthloginpost) | **POST** /api/auth/login | 登录
[**apiAuthLogoutPost**](AuthApi.md#apiauthlogoutpost) | **POST** /api/auth/logout | 退出登录
[**apiAuthRegisterPost**](AuthApi.md#apiauthregisterpost) | **POST** /api/auth/register | 注册（开发辅助）
[**apiAuthWechatMiniProgramBindPost**](AuthApi.md#apiauthwechatminiprogrambindpost) | **POST** /api/auth/wechat/mini-program/bind | 微信小程序绑定（用 bindToken + 账号密码绑定到儿童账号）
[**apiAuthWechatMiniProgramLoginPost**](AuthApi.md#apiauthwechatminiprogramloginpost) | **POST** /api/auth/wechat/mini-program/login | 微信小程序登录（code 换 openid；已绑定则直接返回 JWT）


# **apiAuthDeviceBindConfirmPost**
> ApiAuthDeviceBindConfirmPost200Response apiAuthDeviceBindConfirmPost(apiAuthDeviceBindConfirmPostRequest)

确认设备绑定（儿童端）

当 /api/auth/login 返回 bindRequired=true 时，用 bindToken 完成设备绑定，并返回 JWT。  规则（MVP）：仅对 CHILD（儿童）账号生效；已绑定则会校验 deviceId 一致性。

### Example
```dart
import 'package:etgy_openapi_client/api.dart';

final api = EtgyOpenapiClient().getAuthApi();
final ApiAuthDeviceBindConfirmPostRequest apiAuthDeviceBindConfirmPostRequest = ; // ApiAuthDeviceBindConfirmPostRequest | 

try {
    final response = api.apiAuthDeviceBindConfirmPost(apiAuthDeviceBindConfirmPostRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AuthApi->apiAuthDeviceBindConfirmPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **apiAuthDeviceBindConfirmPostRequest** | [**ApiAuthDeviceBindConfirmPostRequest**](ApiAuthDeviceBindConfirmPostRequest.md)|  | [optional] 

### Return type

[**ApiAuthDeviceBindConfirmPost200Response**](ApiAuthDeviceBindConfirmPost200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiAuthLoginPost**
> ApiAuthLoginPost200Response apiAuthLoginPost(apiAuthLoginPostRequest)

登录

### Example
```dart
import 'package:etgy_openapi_client/api.dart';

final api = EtgyOpenapiClient().getAuthApi();
final ApiAuthLoginPostRequest apiAuthLoginPostRequest = ; // ApiAuthLoginPostRequest | 

try {
    final response = api.apiAuthLoginPost(apiAuthLoginPostRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AuthApi->apiAuthLoginPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **apiAuthLoginPostRequest** | [**ApiAuthLoginPostRequest**](ApiAuthLoginPostRequest.md)|  | [optional] 

### Return type

[**ApiAuthLoginPost200Response**](ApiAuthLoginPost200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiAuthLogoutPost**
> BaseResponse apiAuthLogoutPost()

退出登录

### Example
```dart
import 'package:etgy_openapi_client/api.dart';

final api = EtgyOpenapiClient().getAuthApi();

try {
    final response = api.apiAuthLogoutPost();
    print(response);
} on DioException catch (e) {
    print('Exception when calling AuthApi->apiAuthLogoutPost: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BaseResponse**](BaseResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiAuthRegisterPost**
> ApiAuthRegisterPost201Response apiAuthRegisterPost(apiAuthRegisterPostRequest)

注册（开发辅助）

### Example
```dart
import 'package:etgy_openapi_client/api.dart';

final api = EtgyOpenapiClient().getAuthApi();
final ApiAuthRegisterPostRequest apiAuthRegisterPostRequest = ; // ApiAuthRegisterPostRequest | 

try {
    final response = api.apiAuthRegisterPost(apiAuthRegisterPostRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AuthApi->apiAuthRegisterPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **apiAuthRegisterPostRequest** | [**ApiAuthRegisterPostRequest**](ApiAuthRegisterPostRequest.md)|  | [optional] 

### Return type

[**ApiAuthRegisterPost201Response**](ApiAuthRegisterPost201Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiAuthWechatMiniProgramBindPost**
> ApiAuthDeviceBindConfirmPost200Response apiAuthWechatMiniProgramBindPost(apiAuthWechatMiniProgramBindPostRequest)

微信小程序绑定（用 bindToken + 账号密码绑定到儿童账号）

当 /login 返回 bindRequired=true 时，用 bindToken + 系统账号密码完成绑定。  当前版本为 MVP 规则：仅允许绑定到 CHILD（儿童）账号。绑定成功后会返回 JWT（等同一次登录）。

### Example
```dart
import 'package:etgy_openapi_client/api.dart';

final api = EtgyOpenapiClient().getAuthApi();
final ApiAuthWechatMiniProgramBindPostRequest apiAuthWechatMiniProgramBindPostRequest = ; // ApiAuthWechatMiniProgramBindPostRequest | 

try {
    final response = api.apiAuthWechatMiniProgramBindPost(apiAuthWechatMiniProgramBindPostRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AuthApi->apiAuthWechatMiniProgramBindPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **apiAuthWechatMiniProgramBindPostRequest** | [**ApiAuthWechatMiniProgramBindPostRequest**](ApiAuthWechatMiniProgramBindPostRequest.md)|  | [optional] 

### Return type

[**ApiAuthDeviceBindConfirmPost200Response**](ApiAuthDeviceBindConfirmPost200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiAuthWechatMiniProgramLoginPost**
> ApiAuthWechatMiniProgramLoginPost200Response apiAuthWechatMiniProgramLoginPost(apiAuthWechatMiniProgramLoginPostRequest)

微信小程序登录（code 换 openid；已绑定则直接返回 JWT）

小程序端调用 wx.login() 获取 code 后调用此接口。  - 若 openid 已绑定：返回 { bindRequired: false, token, user } - 若 openid 未绑定：返回 { bindRequired: true, bindToken }（短期有效，用于后续绑定）  注意：需在后端配置 WECHAT_MP_APP_ID / WECHAT_MP_APP_SECRET 才会真实请求微信 jscode2session。

### Example
```dart
import 'package:etgy_openapi_client/api.dart';

final api = EtgyOpenapiClient().getAuthApi();
final ApiAuthWechatMiniProgramLoginPostRequest apiAuthWechatMiniProgramLoginPostRequest = ; // ApiAuthWechatMiniProgramLoginPostRequest | 

try {
    final response = api.apiAuthWechatMiniProgramLoginPost(apiAuthWechatMiniProgramLoginPostRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AuthApi->apiAuthWechatMiniProgramLoginPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **apiAuthWechatMiniProgramLoginPostRequest** | [**ApiAuthWechatMiniProgramLoginPostRequest**](ApiAuthWechatMiniProgramLoginPostRequest.md)|  | [optional] 

### Return type

[**ApiAuthWechatMiniProgramLoginPost200Response**](ApiAuthWechatMiniProgramLoginPost200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

