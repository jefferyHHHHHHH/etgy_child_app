# etgy_openapi_client.api.PlatformApi

## Load the API package
```dart
import 'package:etgy_openapi_client/api.dart';
```

All URIs are relative to *http://8.148.215.20*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiPlatformAuditLogsGet**](PlatformApi.md#apiplatformauditlogsget) | **GET** /api/platform/audit-logs | 审计日志查询（管理员）
[**apiPlatformCollegeAdminsGet**](PlatformApi.md#apiplatformcollegeadminsget) | **GET** /api/platform/college-admins | 学院管理员账号列表（平台管理员）
[**apiPlatformCollegeAdminsIdDelete**](PlatformApi.md#apiplatformcollegeadminsiddelete) | **DELETE** /api/platform/college-admins/{id} | 删除学院管理员账号（平台管理员）
[**apiPlatformCollegeAdminsIdPasswordGet**](PlatformApi.md#apiplatformcollegeadminsidpasswordget) | **GET** /api/platform/college-admins/{id}/password | 查看学院管理员账号密码（平台管理员）
[**apiPlatformCollegeAdminsIdPasswordPost**](PlatformApi.md#apiplatformcollegeadminsidpasswordpost) | **POST** /api/platform/college-admins/{id}/password | 修改学院管理员账号密码（平台管理员）
[**apiPlatformCollegeAdminsIdPatch**](PlatformApi.md#apiplatformcollegeadminsidpatch) | **PATCH** /api/platform/college-admins/{id} | 编辑学院管理员账号（平台管理员）
[**apiPlatformCollegeAdminsIdStatusPatch**](PlatformApi.md#apiplatformcollegeadminsidstatuspatch) | **PATCH** /api/platform/college-admins/{id}/status | 停用/启用学院管理员账号（平台管理员）
[**apiPlatformCollegeAdminsPost**](PlatformApi.md#apiplatformcollegeadminspost) | **POST** /api/platform/college-admins | 创建学院管理员账号（平台管理员）
[**apiPlatformCollegesGet**](PlatformApi.md#apiplatformcollegesget) | **GET** /api/platform/colleges | 学院列表（平台管理员）
[**apiPlatformCollegesIdPatch**](PlatformApi.md#apiplatformcollegesidpatch) | **PATCH** /api/platform/colleges/{id} | 更新学院（平台管理员）
[**apiPlatformCollegesPost**](PlatformApi.md#apiplatformcollegespost) | **POST** /api/platform/colleges | 创建学院（平台管理员）
[**apiPlatformContentPolicyGet**](PlatformApi.md#apiplatformcontentpolicyget) | **GET** /api/platform/content-policy | 获取内容合规策略（评论/弹幕开关 + 敏感词动作）
[**apiPlatformContentPolicyPut**](PlatformApi.md#apiplatformcontentpolicyput) | **PUT** /api/platform/content-policy | 更新内容合规策略（评论/弹幕开关 + 敏感词动作）
[**apiPlatformDashboardGet**](PlatformApi.md#apiplatformdashboardget) | **GET** /api/platform/dashboard | 数据概览 Dashboard（管理员）
[**apiPlatformSensitiveWordsBatchPost**](PlatformApi.md#apiplatformsensitivewordsbatchpost) | **POST** /api/platform/sensitive-words/batch | 批量新增敏感词（平台管理员）
[**apiPlatformSensitiveWordsExportGet**](PlatformApi.md#apiplatformsensitivewordsexportget) | **GET** /api/platform/sensitive-words/export | 导出敏感词（TXT/CSV）
[**apiPlatformSensitiveWordsGet**](PlatformApi.md#apiplatformsensitivewordsget) | **GET** /api/platform/sensitive-words | 敏感词列表（平台管理员）
[**apiPlatformSensitiveWordsIdDelete**](PlatformApi.md#apiplatformsensitivewordsiddelete) | **DELETE** /api/platform/sensitive-words/{id} | 删除敏感词（平台管理员）
[**apiPlatformSensitiveWordsIdPatch**](PlatformApi.md#apiplatformsensitivewordsidpatch) | **PATCH** /api/platform/sensitive-words/{id} | 启用/停用敏感词（平台管理员）
[**apiPlatformSensitiveWordsImportPost**](PlatformApi.md#apiplatformsensitivewordsimportpost) | **POST** /api/platform/sensitive-words/import | 导入敏感词（TXT/CSV）
[**apiPlatformSensitiveWordsPost**](PlatformApi.md#apiplatformsensitivewordspost) | **POST** /api/platform/sensitive-words | 新增敏感词（平台管理员）


# **apiPlatformAuditLogsGet**
> ApiAuthRegisterPost201Response apiPlatformAuditLogsGet(collegeId, action, operatorId, targetType, targetId, startTime, endTime, page, pageSize)

审计日志查询（管理员）

### Example
```dart
import 'package:etgy_openapi_client/api.dart';

final api = EtgyOpenapiClient().getPlatformApi();
final int collegeId = 56; // int | 平台管理员可按学院筛选；学院管理员会被强制为自身学院
final String action = action_example; // String | 
final int operatorId = 56; // int | 
final String targetType = targetType_example; // String | 
final String targetId = targetId_example; // String | 
final DateTime startTime = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endTime = 2013-10-20T19:20:30+01:00; // DateTime | 
final int page = 56; // int | 
final int pageSize = 56; // int | 

try {
    final response = api.apiPlatformAuditLogsGet(collegeId, action, operatorId, targetType, targetId, startTime, endTime, page, pageSize);
    print(response);
} on DioException catch (e) {
    print('Exception when calling PlatformApi->apiPlatformAuditLogsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **collegeId** | **int**| 平台管理员可按学院筛选；学院管理员会被强制为自身学院 | [optional] 
 **action** | **String**|  | [optional] 
 **operatorId** | **int**|  | [optional] 
 **targetType** | **String**|  | [optional] 
 **targetId** | **String**|  | [optional] 
 **startTime** | **DateTime**|  | [optional] 
 **endTime** | **DateTime**|  | [optional] 
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

# **apiPlatformCollegeAdminsGet**
> ApiAuthRegisterPost201Response apiPlatformCollegeAdminsGet(collegeId)

学院管理员账号列表（平台管理员）

### Example
```dart
import 'package:etgy_openapi_client/api.dart';

final api = EtgyOpenapiClient().getPlatformApi();
final int collegeId = 56; // int | 

try {
    final response = api.apiPlatformCollegeAdminsGet(collegeId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling PlatformApi->apiPlatformCollegeAdminsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **collegeId** | **int**|  | [optional] 

### Return type

[**ApiAuthRegisterPost201Response**](ApiAuthRegisterPost201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiPlatformCollegeAdminsIdDelete**
> ApiAuthRegisterPost201Response apiPlatformCollegeAdminsIdDelete(id)

删除学院管理员账号（平台管理员）

### Example
```dart
import 'package:etgy_openapi_client/api.dart';

final api = EtgyOpenapiClient().getPlatformApi();
final String id = id_example; // String | 

try {
    final response = api.apiPlatformCollegeAdminsIdDelete(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling PlatformApi->apiPlatformCollegeAdminsIdDelete: $e\n');
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

# **apiPlatformCollegeAdminsIdPasswordGet**
> ApiAuthRegisterPost201Response apiPlatformCollegeAdminsIdPasswordGet(id)

查看学院管理员账号密码（平台管理员）

### Example
```dart
import 'package:etgy_openapi_client/api.dart';

final api = EtgyOpenapiClient().getPlatformApi();
final String id = id_example; // String | 

try {
    final response = api.apiPlatformCollegeAdminsIdPasswordGet(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling PlatformApi->apiPlatformCollegeAdminsIdPasswordGet: $e\n');
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

# **apiPlatformCollegeAdminsIdPasswordPost**
> ApiAuthRegisterPost201Response apiPlatformCollegeAdminsIdPasswordPost(id, apiUsersVolunteersIdPasswordPostRequest)

修改学院管理员账号密码（平台管理员）

### Example
```dart
import 'package:etgy_openapi_client/api.dart';

final api = EtgyOpenapiClient().getPlatformApi();
final String id = id_example; // String | 
final ApiUsersVolunteersIdPasswordPostRequest apiUsersVolunteersIdPasswordPostRequest = ; // ApiUsersVolunteersIdPasswordPostRequest | 

try {
    final response = api.apiPlatformCollegeAdminsIdPasswordPost(id, apiUsersVolunteersIdPasswordPostRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling PlatformApi->apiPlatformCollegeAdminsIdPasswordPost: $e\n');
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

# **apiPlatformCollegeAdminsIdPatch**
> ApiAuthRegisterPost201Response apiPlatformCollegeAdminsIdPatch(id, apiPlatformCollegeAdminsIdPatchRequest)

编辑学院管理员账号（平台管理员）

### Example
```dart
import 'package:etgy_openapi_client/api.dart';

final api = EtgyOpenapiClient().getPlatformApi();
final String id = id_example; // String | 
final ApiPlatformCollegeAdminsIdPatchRequest apiPlatformCollegeAdminsIdPatchRequest = ; // ApiPlatformCollegeAdminsIdPatchRequest | 

try {
    final response = api.apiPlatformCollegeAdminsIdPatch(id, apiPlatformCollegeAdminsIdPatchRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling PlatformApi->apiPlatformCollegeAdminsIdPatch: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **apiPlatformCollegeAdminsIdPatchRequest** | [**ApiPlatformCollegeAdminsIdPatchRequest**](ApiPlatformCollegeAdminsIdPatchRequest.md)|  | [optional] 

### Return type

[**ApiAuthRegisterPost201Response**](ApiAuthRegisterPost201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiPlatformCollegeAdminsIdStatusPatch**
> ApiAuthRegisterPost201Response apiPlatformCollegeAdminsIdStatusPatch(id, apiUsersChildrenIdStatusPatchRequest)

停用/启用学院管理员账号（平台管理员）

### Example
```dart
import 'package:etgy_openapi_client/api.dart';

final api = EtgyOpenapiClient().getPlatformApi();
final String id = id_example; // String | 
final ApiUsersChildrenIdStatusPatchRequest apiUsersChildrenIdStatusPatchRequest = ; // ApiUsersChildrenIdStatusPatchRequest | 

try {
    final response = api.apiPlatformCollegeAdminsIdStatusPatch(id, apiUsersChildrenIdStatusPatchRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling PlatformApi->apiPlatformCollegeAdminsIdStatusPatch: $e\n');
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

# **apiPlatformCollegeAdminsPost**
> ApiAuthRegisterPost201Response apiPlatformCollegeAdminsPost(apiPlatformCollegeAdminsPostRequest)

创建学院管理员账号（平台管理员）

### Example
```dart
import 'package:etgy_openapi_client/api.dart';

final api = EtgyOpenapiClient().getPlatformApi();
final ApiPlatformCollegeAdminsPostRequest apiPlatformCollegeAdminsPostRequest = ; // ApiPlatformCollegeAdminsPostRequest | 

try {
    final response = api.apiPlatformCollegeAdminsPost(apiPlatformCollegeAdminsPostRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling PlatformApi->apiPlatformCollegeAdminsPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **apiPlatformCollegeAdminsPostRequest** | [**ApiPlatformCollegeAdminsPostRequest**](ApiPlatformCollegeAdminsPostRequest.md)|  | [optional] 

### Return type

[**ApiAuthRegisterPost201Response**](ApiAuthRegisterPost201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiPlatformCollegesGet**
> ApiAuthRegisterPost201Response apiPlatformCollegesGet()

学院列表（平台管理员）

### Example
```dart
import 'package:etgy_openapi_client/api.dart';

final api = EtgyOpenapiClient().getPlatformApi();

try {
    final response = api.apiPlatformCollegesGet();
    print(response);
} on DioException catch (e) {
    print('Exception when calling PlatformApi->apiPlatformCollegesGet: $e\n');
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

# **apiPlatformCollegesIdPatch**
> ApiAuthRegisterPost201Response apiPlatformCollegesIdPatch(id, apiPlatformCollegesIdPatchRequest)

更新学院（平台管理员）

### Example
```dart
import 'package:etgy_openapi_client/api.dart';

final api = EtgyOpenapiClient().getPlatformApi();
final String id = id_example; // String | 
final ApiPlatformCollegesIdPatchRequest apiPlatformCollegesIdPatchRequest = ; // ApiPlatformCollegesIdPatchRequest | 

try {
    final response = api.apiPlatformCollegesIdPatch(id, apiPlatformCollegesIdPatchRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling PlatformApi->apiPlatformCollegesIdPatch: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **apiPlatformCollegesIdPatchRequest** | [**ApiPlatformCollegesIdPatchRequest**](ApiPlatformCollegesIdPatchRequest.md)|  | [optional] 

### Return type

[**ApiAuthRegisterPost201Response**](ApiAuthRegisterPost201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiPlatformCollegesPost**
> ApiAuthRegisterPost201Response apiPlatformCollegesPost(apiPlatformCollegesPostRequest)

创建学院（平台管理员）

### Example
```dart
import 'package:etgy_openapi_client/api.dart';

final api = EtgyOpenapiClient().getPlatformApi();
final ApiPlatformCollegesPostRequest apiPlatformCollegesPostRequest = ; // ApiPlatformCollegesPostRequest | 

try {
    final response = api.apiPlatformCollegesPost(apiPlatformCollegesPostRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling PlatformApi->apiPlatformCollegesPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **apiPlatformCollegesPostRequest** | [**ApiPlatformCollegesPostRequest**](ApiPlatformCollegesPostRequest.md)|  | [optional] 

### Return type

[**ApiAuthRegisterPost201Response**](ApiAuthRegisterPost201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiPlatformContentPolicyGet**
> ApiPlatformContentPolicyGet200Response apiPlatformContentPolicyGet()

获取内容合规策略（评论/弹幕开关 + 敏感词动作）

### Example
```dart
import 'package:etgy_openapi_client/api.dart';

final api = EtgyOpenapiClient().getPlatformApi();

try {
    final response = api.apiPlatformContentPolicyGet();
    print(response);
} on DioException catch (e) {
    print('Exception when calling PlatformApi->apiPlatformContentPolicyGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ApiPlatformContentPolicyGet200Response**](ApiPlatformContentPolicyGet200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiPlatformContentPolicyPut**
> ApiPlatformContentPolicyGet200Response apiPlatformContentPolicyPut(apiPlatformContentPolicyPutRequest)

更新内容合规策略（评论/弹幕开关 + 敏感词动作）

### Example
```dart
import 'package:etgy_openapi_client/api.dart';

final api = EtgyOpenapiClient().getPlatformApi();
final ApiPlatformContentPolicyPutRequest apiPlatformContentPolicyPutRequest = ; // ApiPlatformContentPolicyPutRequest | 

try {
    final response = api.apiPlatformContentPolicyPut(apiPlatformContentPolicyPutRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling PlatformApi->apiPlatformContentPolicyPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **apiPlatformContentPolicyPutRequest** | [**ApiPlatformContentPolicyPutRequest**](ApiPlatformContentPolicyPutRequest.md)|  | [optional] 

### Return type

[**ApiPlatformContentPolicyGet200Response**](ApiPlatformContentPolicyGet200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiPlatformDashboardGet**
> ApiAuthRegisterPost201Response apiPlatformDashboardGet(collegeId)

数据概览 Dashboard（管理员）

### Example
```dart
import 'package:etgy_openapi_client/api.dart';

final api = EtgyOpenapiClient().getPlatformApi();
final int collegeId = 56; // int | 平台管理员可按学院查看；学院管理员会被强制为自身学院

try {
    final response = api.apiPlatformDashboardGet(collegeId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling PlatformApi->apiPlatformDashboardGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **collegeId** | **int**| 平台管理员可按学院查看；学院管理员会被强制为自身学院 | [optional] 

### Return type

[**ApiAuthRegisterPost201Response**](ApiAuthRegisterPost201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiPlatformSensitiveWordsBatchPost**
> ApiAuthRegisterPost201Response apiPlatformSensitiveWordsBatchPost(apiPlatformSensitiveWordsBatchPostRequest)

批量新增敏感词（平台管理员）

### Example
```dart
import 'package:etgy_openapi_client/api.dart';

final api = EtgyOpenapiClient().getPlatformApi();
final ApiPlatformSensitiveWordsBatchPostRequest apiPlatformSensitiveWordsBatchPostRequest = ; // ApiPlatformSensitiveWordsBatchPostRequest | 

try {
    final response = api.apiPlatformSensitiveWordsBatchPost(apiPlatformSensitiveWordsBatchPostRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling PlatformApi->apiPlatformSensitiveWordsBatchPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **apiPlatformSensitiveWordsBatchPostRequest** | [**ApiPlatformSensitiveWordsBatchPostRequest**](ApiPlatformSensitiveWordsBatchPostRequest.md)|  | [optional] 

### Return type

[**ApiAuthRegisterPost201Response**](ApiAuthRegisterPost201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiPlatformSensitiveWordsExportGet**
> apiPlatformSensitiveWordsExportGet(format, isActive)

导出敏感词（TXT/CSV）

### Example
```dart
import 'package:etgy_openapi_client/api.dart';

final api = EtgyOpenapiClient().getPlatformApi();
final String format = format_example; // String | 
final bool isActive = true; // bool | 

try {
    api.apiPlatformSensitiveWordsExportGet(format, isActive);
} on DioException catch (e) {
    print('Exception when calling PlatformApi->apiPlatformSensitiveWordsExportGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **format** | **String**|  | [optional] [default to 'txt']
 **isActive** | **bool**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiPlatformSensitiveWordsGet**
> ApiAuthRegisterPost201Response apiPlatformSensitiveWordsGet(q, isActive, page, pageSize)

敏感词列表（平台管理员）

### Example
```dart
import 'package:etgy_openapi_client/api.dart';

final api = EtgyOpenapiClient().getPlatformApi();
final String q = q_example; // String | 
final bool isActive = true; // bool | 
final int page = 56; // int | 
final int pageSize = 56; // int | 

try {
    final response = api.apiPlatformSensitiveWordsGet(q, isActive, page, pageSize);
    print(response);
} on DioException catch (e) {
    print('Exception when calling PlatformApi->apiPlatformSensitiveWordsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **String**|  | [optional] 
 **isActive** | **bool**|  | [optional] 
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

# **apiPlatformSensitiveWordsIdDelete**
> ApiAuthRegisterPost201Response apiPlatformSensitiveWordsIdDelete(id)

删除敏感词（平台管理员）

### Example
```dart
import 'package:etgy_openapi_client/api.dart';

final api = EtgyOpenapiClient().getPlatformApi();
final String id = id_example; // String | 

try {
    final response = api.apiPlatformSensitiveWordsIdDelete(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling PlatformApi->apiPlatformSensitiveWordsIdDelete: $e\n');
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

# **apiPlatformSensitiveWordsIdPatch**
> ApiAuthRegisterPost201Response apiPlatformSensitiveWordsIdPatch(id, apiPlatformSensitiveWordsIdPatchRequest)

启用/停用敏感词（平台管理员）

### Example
```dart
import 'package:etgy_openapi_client/api.dart';

final api = EtgyOpenapiClient().getPlatformApi();
final String id = id_example; // String | 
final ApiPlatformSensitiveWordsIdPatchRequest apiPlatformSensitiveWordsIdPatchRequest = ; // ApiPlatformSensitiveWordsIdPatchRequest | 

try {
    final response = api.apiPlatformSensitiveWordsIdPatch(id, apiPlatformSensitiveWordsIdPatchRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling PlatformApi->apiPlatformSensitiveWordsIdPatch: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **apiPlatformSensitiveWordsIdPatchRequest** | [**ApiPlatformSensitiveWordsIdPatchRequest**](ApiPlatformSensitiveWordsIdPatchRequest.md)|  | [optional] 

### Return type

[**ApiAuthRegisterPost201Response**](ApiAuthRegisterPost201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiPlatformSensitiveWordsImportPost**
> ApiAuthRegisterPost201Response apiPlatformSensitiveWordsImportPost(file, format, overwrite)

导入敏感词（TXT/CSV）

### Example
```dart
import 'package:etgy_openapi_client/api.dart';

final api = EtgyOpenapiClient().getPlatformApi();
final MultipartFile file = BINARY_DATA_HERE; // MultipartFile | TXT/CSV 文件，字段名必须为 file
final String format = format_example; // String | 
final bool overwrite = true; // bool | 

try {
    final response = api.apiPlatformSensitiveWordsImportPost(file, format, overwrite);
    print(response);
} on DioException catch (e) {
    print('Exception when calling PlatformApi->apiPlatformSensitiveWordsImportPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file** | **MultipartFile**| TXT/CSV 文件，字段名必须为 file | 
 **format** | **String**|  | [optional] [default to 'txt']
 **overwrite** | **bool**|  | [optional] [default to false]

### Return type

[**ApiAuthRegisterPost201Response**](ApiAuthRegisterPost201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiPlatformSensitiveWordsPost**
> ApiAuthRegisterPost201Response apiPlatformSensitiveWordsPost(apiPlatformSensitiveWordsPostRequest)

新增敏感词（平台管理员）

### Example
```dart
import 'package:etgy_openapi_client/api.dart';

final api = EtgyOpenapiClient().getPlatformApi();
final ApiPlatformSensitiveWordsPostRequest apiPlatformSensitiveWordsPostRequest = ; // ApiPlatformSensitiveWordsPostRequest | 

try {
    final response = api.apiPlatformSensitiveWordsPost(apiPlatformSensitiveWordsPostRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling PlatformApi->apiPlatformSensitiveWordsPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **apiPlatformSensitiveWordsPostRequest** | [**ApiPlatformSensitiveWordsPostRequest**](ApiPlatformSensitiveWordsPostRequest.md)|  | [optional] 

### Return type

[**ApiAuthRegisterPost201Response**](ApiAuthRegisterPost201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

