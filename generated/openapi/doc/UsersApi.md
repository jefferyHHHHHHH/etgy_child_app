# etgy_openapi_client.api.UsersApi

## Load the API package
```dart
import 'package:etgy_openapi_client/api.dart';
```

All URIs are relative to *http://8.166.115.78*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiUsersChildrenBatchExcelPost**](UsersApi.md#apiuserschildrenbatchexcelpost) | **POST** /api/users/children/batch-excel | 批量导入儿童账号（Excel .xlsx）
[**apiUsersChildrenBatchExcelTemplateGet**](UsersApi.md#apiuserschildrenbatchexceltemplateget) | **GET** /api/users/children/batch-excel/template | 下载儿童批量导入 Excel 模板（.xlsx）
[**apiUsersChildrenBatchPost**](UsersApi.md#apiuserschildrenbatchpost) | **POST** /api/users/children/batch | 批量创建儿童账号（平台管理员建档）
[**apiUsersChildrenGet**](UsersApi.md#apiuserschildrenget) | **GET** /api/users/children | 获取儿童账号列表（平台管理员）
[**apiUsersChildrenIdResetDeviceBindingPost**](UsersApi.md#apiuserschildrenidresetdevicebindingpost) | **POST** /api/users/children/{id}/reset-device-binding | 重置儿童设备绑定（平台管理员）
[**apiUsersChildrenIdResetPasswordPost**](UsersApi.md#apiuserschildrenidresetpasswordpost) | **POST** /api/users/children/{id}/reset-password | 重置儿童账号密码（平台管理员）
[**apiUsersChildrenIdStatusPatch**](UsersApi.md#apiuserschildrenidstatuspatch) | **PATCH** /api/users/children/{id}/status | 更新儿童账号状态（平台管理员）
[**apiUsersChildrenPost**](UsersApi.md#apiuserschildrenpost) | **POST** /api/users/children | 创建儿童账号（平台管理员建档）
[**apiUsersMeGet**](UsersApi.md#apiusersmeget) | **GET** /api/users/me | 获取我的用户信息
[**apiUsersMePasswordPatch**](UsersApi.md#apiusersmepasswordpatch) | **PATCH** /api/users/me/password | 修改我的密码
[**apiUsersVolunteersAccountsPost**](UsersApi.md#apiusersvolunteersaccountspost) | **POST** /api/users/volunteers/accounts | 创建志愿者账号（学院管理员/平台管理员）
[**apiUsersVolunteersBatchExcelPost**](UsersApi.md#apiusersvolunteersbatchexcelpost) | **POST** /api/users/volunteers/batch-excel | 批量导入志愿者账号（Excel .xlsx，学院管理员）
[**apiUsersVolunteersBatchExcelTemplateGet**](UsersApi.md#apiusersvolunteersbatchexceltemplateget) | **GET** /api/users/volunteers/batch-excel/template | 下载志愿者批量导入 Excel 模板（.xlsx）
[**apiUsersVolunteersGet**](UsersApi.md#apiusersvolunteersget) | **GET** /api/users/volunteers | 获取志愿者列表（管理员）
[**apiUsersVolunteersIdPasswordGet**](UsersApi.md#apiusersvolunteersidpasswordget) | **GET** /api/users/volunteers/{id}/password | 查看志愿者账号密码（管理员）
[**apiUsersVolunteersIdPasswordPost**](UsersApi.md#apiusersvolunteersidpasswordpost) | **POST** /api/users/volunteers/{id}/password | 修改志愿者账号密码（管理员）
[**apiUsersVolunteersIdStatusPatch**](UsersApi.md#apiusersvolunteersidstatuspatch) | **PATCH** /api/users/volunteers/{id}/status | 更新志愿者状态（管理员）
[**apiUsersVolunteersIdSuspendPatch**](UsersApi.md#apiusersvolunteersidsuspendpatch) | **PATCH** /api/users/volunteers/{id}/suspend | 停用/启用志愿者账号（管理员）


# **apiUsersChildrenBatchExcelPost**
> ApiUsersVolunteersBatchExcelPost201Response apiUsersChildrenBatchExcelPost(file)

批量导入儿童账号（Excel .xlsx）

### Example
```dart
import 'package:etgy_openapi_client/api.dart';

final api = EtgyOpenapiClient().getUsersApi();
final MultipartFile file = BINARY_DATA_HERE; // MultipartFile | Excel 文件（.xlsx），字段名固定为 file

try {
    final response = api.apiUsersChildrenBatchExcelPost(file);
    print(response);
} on DioException catch (e) {
    print('Exception when calling UsersApi->apiUsersChildrenBatchExcelPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file** | **MultipartFile**| Excel 文件（.xlsx），字段名固定为 file | 

### Return type

[**ApiUsersVolunteersBatchExcelPost201Response**](ApiUsersVolunteersBatchExcelPost201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiUsersChildrenBatchExcelTemplateGet**
> Uint8List apiUsersChildrenBatchExcelTemplateGet()

下载儿童批量导入 Excel 模板（.xlsx）

### Example
```dart
import 'package:etgy_openapi_client/api.dart';

final api = EtgyOpenapiClient().getUsersApi();

try {
    final response = api.apiUsersChildrenBatchExcelTemplateGet();
    print(response);
} on DioException catch (e) {
    print('Exception when calling UsersApi->apiUsersChildrenBatchExcelTemplateGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Uint8List**](Uint8List.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiUsersChildrenBatchPost**
> ApiAuthRegisterPost201Response apiUsersChildrenBatchPost(apiUsersChildrenBatchPostRequest)

批量创建儿童账号（平台管理员建档）

### Example
```dart
import 'package:etgy_openapi_client/api.dart';

final api = EtgyOpenapiClient().getUsersApi();
final ApiUsersChildrenBatchPostRequest apiUsersChildrenBatchPostRequest = ; // ApiUsersChildrenBatchPostRequest | 

try {
    final response = api.apiUsersChildrenBatchPost(apiUsersChildrenBatchPostRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling UsersApi->apiUsersChildrenBatchPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **apiUsersChildrenBatchPostRequest** | [**ApiUsersChildrenBatchPostRequest**](ApiUsersChildrenBatchPostRequest.md)|  | [optional] 

### Return type

[**ApiAuthRegisterPost201Response**](ApiAuthRegisterPost201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiUsersChildrenGet**
> ApiAuthRegisterPost201Response apiUsersChildrenGet(search, school, grade, page, pageSize)

获取儿童账号列表（平台管理员）

### Example
```dart
import 'package:etgy_openapi_client/api.dart';

final api = EtgyOpenapiClient().getUsersApi();
final String search = search_example; // String | 按用户名/姓名模糊搜索
final String school = school_example; // String | 
final String grade = grade_example; // String | 
final int page = 56; // int | 
final int pageSize = 56; // int | 

try {
    final response = api.apiUsersChildrenGet(search, school, grade, page, pageSize);
    print(response);
} on DioException catch (e) {
    print('Exception when calling UsersApi->apiUsersChildrenGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **search** | **String**| 按用户名/姓名模糊搜索 | [optional] 
 **school** | **String**|  | [optional] 
 **grade** | **String**|  | [optional] 
 **page** | **int**|  | [optional] [default to 1]
 **pageSize** | **int**|  | [optional] [default to 20]

### Return type

[**ApiAuthRegisterPost201Response**](ApiAuthRegisterPost201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiUsersChildrenIdResetDeviceBindingPost**
> ApiAuthRegisterPost201Response apiUsersChildrenIdResetDeviceBindingPost(id)

重置儿童设备绑定（平台管理员）

### Example
```dart
import 'package:etgy_openapi_client/api.dart';

final api = EtgyOpenapiClient().getUsersApi();
final String id = id_example; // String | 

try {
    final response = api.apiUsersChildrenIdResetDeviceBindingPost(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling UsersApi->apiUsersChildrenIdResetDeviceBindingPost: $e\n');
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

# **apiUsersChildrenIdResetPasswordPost**
> ApiAuthRegisterPost201Response apiUsersChildrenIdResetPasswordPost(id)

重置儿童账号密码（平台管理员）

### Example
```dart
import 'package:etgy_openapi_client/api.dart';

final api = EtgyOpenapiClient().getUsersApi();
final String id = id_example; // String | 

try {
    final response = api.apiUsersChildrenIdResetPasswordPost(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling UsersApi->apiUsersChildrenIdResetPasswordPost: $e\n');
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

# **apiUsersChildrenIdStatusPatch**
> ApiAuthRegisterPost201Response apiUsersChildrenIdStatusPatch(id, apiUsersChildrenIdStatusPatchRequest)

更新儿童账号状态（平台管理员）

### Example
```dart
import 'package:etgy_openapi_client/api.dart';

final api = EtgyOpenapiClient().getUsersApi();
final String id = id_example; // String | 
final ApiUsersChildrenIdStatusPatchRequest apiUsersChildrenIdStatusPatchRequest = ; // ApiUsersChildrenIdStatusPatchRequest | 

try {
    final response = api.apiUsersChildrenIdStatusPatch(id, apiUsersChildrenIdStatusPatchRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling UsersApi->apiUsersChildrenIdStatusPatch: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **apiUsersChildrenIdStatusPatchRequest** | [**ApiUsersChildrenIdStatusPatchRequest**](ApiUsersChildrenIdStatusPatchRequest.md)|  | [optional] 

### Return type

[**ApiAuthRegisterPost201Response**](ApiAuthRegisterPost201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiUsersChildrenPost**
> ApiAuthRegisterPost201Response apiUsersChildrenPost(apiUsersChildrenPostRequest)

创建儿童账号（平台管理员建档）

### Example
```dart
import 'package:etgy_openapi_client/api.dart';

final api = EtgyOpenapiClient().getUsersApi();
final ApiUsersChildrenPostRequest apiUsersChildrenPostRequest = ; // ApiUsersChildrenPostRequest | 

try {
    final response = api.apiUsersChildrenPost(apiUsersChildrenPostRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling UsersApi->apiUsersChildrenPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **apiUsersChildrenPostRequest** | [**ApiUsersChildrenPostRequest**](ApiUsersChildrenPostRequest.md)|  | [optional] 

### Return type

[**ApiAuthRegisterPost201Response**](ApiAuthRegisterPost201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiUsersMeGet**
> ApiAuthRegisterPost201Response apiUsersMeGet()

获取我的用户信息

### Example
```dart
import 'package:etgy_openapi_client/api.dart';

final api = EtgyOpenapiClient().getUsersApi();

try {
    final response = api.apiUsersMeGet();
    print(response);
} on DioException catch (e) {
    print('Exception when calling UsersApi->apiUsersMeGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ApiAuthRegisterPost201Response**](ApiAuthRegisterPost201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiUsersMePasswordPatch**
> ApiAuthRegisterPost201Response apiUsersMePasswordPatch(apiUsersMePasswordPatchRequest)

修改我的密码

### Example
```dart
import 'package:etgy_openapi_client/api.dart';

final api = EtgyOpenapiClient().getUsersApi();
final ApiUsersMePasswordPatchRequest apiUsersMePasswordPatchRequest = ; // ApiUsersMePasswordPatchRequest | 

try {
    final response = api.apiUsersMePasswordPatch(apiUsersMePasswordPatchRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling UsersApi->apiUsersMePasswordPatch: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **apiUsersMePasswordPatchRequest** | [**ApiUsersMePasswordPatchRequest**](ApiUsersMePasswordPatchRequest.md)|  | [optional] 

### Return type

[**ApiAuthRegisterPost201Response**](ApiAuthRegisterPost201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiUsersVolunteersAccountsPost**
> ApiAuthRegisterPost201Response apiUsersVolunteersAccountsPost(apiUsersVolunteersAccountsPostRequest)

创建志愿者账号（学院管理员/平台管理员）

### Example
```dart
import 'package:etgy_openapi_client/api.dart';

final api = EtgyOpenapiClient().getUsersApi();
final ApiUsersVolunteersAccountsPostRequest apiUsersVolunteersAccountsPostRequest = ; // ApiUsersVolunteersAccountsPostRequest | 

try {
    final response = api.apiUsersVolunteersAccountsPost(apiUsersVolunteersAccountsPostRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling UsersApi->apiUsersVolunteersAccountsPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **apiUsersVolunteersAccountsPostRequest** | [**ApiUsersVolunteersAccountsPostRequest**](ApiUsersVolunteersAccountsPostRequest.md)|  | [optional] 

### Return type

[**ApiAuthRegisterPost201Response**](ApiAuthRegisterPost201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiUsersVolunteersBatchExcelPost**
> ApiUsersVolunteersBatchExcelPost201Response apiUsersVolunteersBatchExcelPost(file, collegeId)

批量导入志愿者账号（Excel .xlsx，学院管理员）

### Example
```dart
import 'package:etgy_openapi_client/api.dart';

final api = EtgyOpenapiClient().getUsersApi();
final MultipartFile file = BINARY_DATA_HERE; // MultipartFile | Excel 文件（.xlsx），字段名固定为 file
final int collegeId = 56; // int | 平台管理员导入时需要；学院管理员会被强制使用自身学院

try {
    final response = api.apiUsersVolunteersBatchExcelPost(file, collegeId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling UsersApi->apiUsersVolunteersBatchExcelPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file** | **MultipartFile**| Excel 文件（.xlsx），字段名固定为 file | 
 **collegeId** | **int**| 平台管理员导入时需要；学院管理员会被强制使用自身学院 | [optional] 

### Return type

[**ApiUsersVolunteersBatchExcelPost201Response**](ApiUsersVolunteersBatchExcelPost201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiUsersVolunteersBatchExcelTemplateGet**
> Uint8List apiUsersVolunteersBatchExcelTemplateGet()

下载志愿者批量导入 Excel 模板（.xlsx）

### Example
```dart
import 'package:etgy_openapi_client/api.dart';

final api = EtgyOpenapiClient().getUsersApi();

try {
    final response = api.apiUsersVolunteersBatchExcelTemplateGet();
    print(response);
} on DioException catch (e) {
    print('Exception when calling UsersApi->apiUsersVolunteersBatchExcelTemplateGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Uint8List**](Uint8List.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiUsersVolunteersGet**
> ApiAuthRegisterPost201Response apiUsersVolunteersGet(collegeId, status, userStatus, search, page, pageSize)

获取志愿者列表（管理员）

### Example
```dart
import 'package:etgy_openapi_client/api.dart';

final api = EtgyOpenapiClient().getUsersApi();
final int collegeId = 56; // int | 
final String status = status_example; // String | 
final String userStatus = userStatus_example; // String | 
final String search = search_example; // String | 
final int page = 56; // int | 
final int pageSize = 56; // int | 

try {
    final response = api.apiUsersVolunteersGet(collegeId, status, userStatus, search, page, pageSize);
    print(response);
} on DioException catch (e) {
    print('Exception when calling UsersApi->apiUsersVolunteersGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **collegeId** | **int**|  | [optional] 
 **status** | **String**|  | [optional] 
 **userStatus** | **String**|  | [optional] 
 **search** | **String**|  | [optional] 
 **page** | **int**|  | [optional] [default to 1]
 **pageSize** | **int**|  | [optional] [default to 20]

### Return type

[**ApiAuthRegisterPost201Response**](ApiAuthRegisterPost201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiUsersVolunteersIdPasswordGet**
> ApiAuthRegisterPost201Response apiUsersVolunteersIdPasswordGet(id)

查看志愿者账号密码（管理员）

### Example
```dart
import 'package:etgy_openapi_client/api.dart';

final api = EtgyOpenapiClient().getUsersApi();
final String id = id_example; // String | 

try {
    final response = api.apiUsersVolunteersIdPasswordGet(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling UsersApi->apiUsersVolunteersIdPasswordGet: $e\n');
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

# **apiUsersVolunteersIdPasswordPost**
> ApiAuthRegisterPost201Response apiUsersVolunteersIdPasswordPost(id, apiUsersVolunteersIdPasswordPostRequest)

修改志愿者账号密码（管理员）

### Example
```dart
import 'package:etgy_openapi_client/api.dart';

final api = EtgyOpenapiClient().getUsersApi();
final String id = id_example; // String | 
final ApiUsersVolunteersIdPasswordPostRequest apiUsersVolunteersIdPasswordPostRequest = ; // ApiUsersVolunteersIdPasswordPostRequest | 

try {
    final response = api.apiUsersVolunteersIdPasswordPost(id, apiUsersVolunteersIdPasswordPostRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling UsersApi->apiUsersVolunteersIdPasswordPost: $e\n');
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

# **apiUsersVolunteersIdStatusPatch**
> ApiAuthRegisterPost201Response apiUsersVolunteersIdStatusPatch(id, apiUsersVolunteersIdStatusPatchRequest)

更新志愿者状态（管理员）

### Example
```dart
import 'package:etgy_openapi_client/api.dart';

final api = EtgyOpenapiClient().getUsersApi();
final String id = id_example; // String | 
final ApiUsersVolunteersIdStatusPatchRequest apiUsersVolunteersIdStatusPatchRequest = ; // ApiUsersVolunteersIdStatusPatchRequest | 

try {
    final response = api.apiUsersVolunteersIdStatusPatch(id, apiUsersVolunteersIdStatusPatchRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling UsersApi->apiUsersVolunteersIdStatusPatch: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **apiUsersVolunteersIdStatusPatchRequest** | [**ApiUsersVolunteersIdStatusPatchRequest**](ApiUsersVolunteersIdStatusPatchRequest.md)|  | [optional] 

### Return type

[**ApiAuthRegisterPost201Response**](ApiAuthRegisterPost201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiUsersVolunteersIdSuspendPatch**
> ApiAuthRegisterPost201Response apiUsersVolunteersIdSuspendPatch(id, apiUsersVolunteersIdSuspendPatchRequest)

停用/启用志愿者账号（管理员）

### Example
```dart
import 'package:etgy_openapi_client/api.dart';

final api = EtgyOpenapiClient().getUsersApi();
final String id = id_example; // String | 
final ApiUsersVolunteersIdSuspendPatchRequest apiUsersVolunteersIdSuspendPatchRequest = ; // ApiUsersVolunteersIdSuspendPatchRequest | 

try {
    final response = api.apiUsersVolunteersIdSuspendPatch(id, apiUsersVolunteersIdSuspendPatchRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling UsersApi->apiUsersVolunteersIdSuspendPatch: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **apiUsersVolunteersIdSuspendPatchRequest** | [**ApiUsersVolunteersIdSuspendPatchRequest**](ApiUsersVolunteersIdSuspendPatchRequest.md)|  | [optional] 

### Return type

[**ApiAuthRegisterPost201Response**](ApiAuthRegisterPost201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

