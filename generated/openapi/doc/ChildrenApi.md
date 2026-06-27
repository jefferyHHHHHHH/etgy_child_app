# etgy_openapi_client.api.ChildrenApi

## Load the API package
```dart
import 'package:etgy_openapi_client/api.dart';
```

All URIs are relative to *http://8.166.115.78*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiChildrenIdPasswordGet**](ChildrenApi.md#apichildrenidpasswordget) | **GET** /api/children/{id}/password | 查看儿童账号密码（平台管理员）
[**apiChildrenIdPasswordPost**](ChildrenApi.md#apichildrenidpasswordpost) | **POST** /api/children/{id}/password | 修改儿童账号密码（平台管理员）


# **apiChildrenIdPasswordGet**
> ApiAuthRegisterPost201Response apiChildrenIdPasswordGet(id)

查看儿童账号密码（平台管理员）

### Example
```dart
import 'package:etgy_openapi_client/api.dart';

final api = EtgyOpenapiClient().getChildrenApi();
final String id = id_example; // String | 

try {
    final response = api.apiChildrenIdPasswordGet(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ChildrenApi->apiChildrenIdPasswordGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**ApiAuthRegisterPost201Response**](ApiAuthRegisterPost201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiChildrenIdPasswordPost**
> ApiAuthRegisterPost201Response apiChildrenIdPasswordPost(id, apiUsersVolunteersIdPasswordPostRequest)

修改儿童账号密码（平台管理员）

### Example
```dart
import 'package:etgy_openapi_client/api.dart';

final api = EtgyOpenapiClient().getChildrenApi();
final String id = id_example; // String | 
final ApiUsersVolunteersIdPasswordPostRequest apiUsersVolunteersIdPasswordPostRequest = ; // ApiUsersVolunteersIdPasswordPostRequest | 

try {
    final response = api.apiChildrenIdPasswordPost(id, apiUsersVolunteersIdPasswordPostRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ChildrenApi->apiChildrenIdPasswordPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **apiUsersVolunteersIdPasswordPostRequest** | [**ApiUsersVolunteersIdPasswordPostRequest**](ApiUsersVolunteersIdPasswordPostRequest.md)|  | [optional] 

### Return type

[**ApiAuthRegisterPost201Response**](ApiAuthRegisterPost201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

