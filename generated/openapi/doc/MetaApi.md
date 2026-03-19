# etgy_openapi_client.api.MetaApi

## Load the API package
```dart
import 'package:etgy_openapi_client/api.dart';
```

All URIs are relative to *http://8.148.215.20*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiMetaDictionariesGet**](MetaApi.md#apimetadictionariesget) | **GET** /api/meta/dictionaries | 获取字典/枚举（前端下拉选项）


# **apiMetaDictionariesGet**
> ApiMetaDictionariesGet200Response apiMetaDictionariesGet()

获取字典/枚举（前端下拉选项）

### Example
```dart
import 'package:etgy_openapi_client/api.dart';

final api = EtgyOpenapiClient().getMetaApi();

try {
    final response = api.apiMetaDictionariesGet();
    print(response);
} on DioException catch (e) {
    print('Exception when calling MetaApi->apiMetaDictionariesGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ApiMetaDictionariesGet200Response**](ApiMetaDictionariesGet200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

