# etgy_openapi_client.api.OSSApi

## Load the API package
```dart
import 'package:etgy_openapi_client/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiOssUploadFolderPost**](OSSApi.md#apiossuploadfolderpost) | **POST** /api/oss/upload/{folder} | 后端代传上传文件到 OSS（multipart）
[**apiOssUploadUrlPost**](OSSApi.md#apiossuploadurlpost) | **POST** /api/oss/upload-url | 获取直传上传 URL（S3 预签名 PUT）
[**apiOssUrlGet**](OSSApi.md#apiossurlget) | **GET** /api/oss/url | 获取私有对象临时访问 URL（S3 预签名 GET）


# **apiOssUploadFolderPost**
> ApiAuthRegisterPost201Response apiOssUploadFolderPost(folder, file)

后端代传上传文件到 OSS（multipart）

### Example
```dart
import 'package:etgy_openapi_client/api.dart';

final api = EtgyOpenapiClient().getOSSApi();
final String folder = folder_example; // String | 
final MultipartFile file = BINARY_DATA_HERE; // MultipartFile | 上传文件字段名必须为 file

try {
    final response = api.apiOssUploadFolderPost(folder, file);
    print(response);
} on DioException catch (e) {
    print('Exception when calling OSSApi->apiOssUploadFolderPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **folder** | **String**|  | 
 **file** | **MultipartFile**| 上传文件字段名必须为 file | 

### Return type

[**ApiAuthRegisterPost201Response**](ApiAuthRegisterPost201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiOssUploadUrlPost**
> ApiAuthRegisterPost201Response apiOssUploadUrlPost(apiOssUploadUrlPostRequest)

获取直传上传 URL（S3 预签名 PUT）

### Example
```dart
import 'package:etgy_openapi_client/api.dart';

final api = EtgyOpenapiClient().getOSSApi();
final ApiOssUploadUrlPostRequest apiOssUploadUrlPostRequest = ; // ApiOssUploadUrlPostRequest | 

try {
    final response = api.apiOssUploadUrlPost(apiOssUploadUrlPostRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling OSSApi->apiOssUploadUrlPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **apiOssUploadUrlPostRequest** | [**ApiOssUploadUrlPostRequest**](ApiOssUploadUrlPostRequest.md)|  | [optional] 

### Return type

[**ApiAuthRegisterPost201Response**](ApiAuthRegisterPost201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiOssUrlGet**
> ApiAuthRegisterPost201Response apiOssUrlGet(keyOrUrl, expiresInSeconds)

获取私有对象临时访问 URL（S3 预签名 GET）

### Example
```dart
import 'package:etgy_openapi_client/api.dart';

final api = EtgyOpenapiClient().getOSSApi();
final String keyOrUrl = keyOrUrl_example; // String | 对象 key（如 videos/2026/01/19/xxx.mp4）或完整 http(s) URL
final int expiresInSeconds = 56; // int | 

try {
    final response = api.apiOssUrlGet(keyOrUrl, expiresInSeconds);
    print(response);
} on DioException catch (e) {
    print('Exception when calling OSSApi->apiOssUrlGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **keyOrUrl** | **String**| 对象 key（如 videos/2026/01/19/xxx.mp4）或完整 http(s) URL | 
 **expiresInSeconds** | **int**|  | [optional] 

### Return type

[**ApiAuthRegisterPost201Response**](ApiAuthRegisterPost201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

