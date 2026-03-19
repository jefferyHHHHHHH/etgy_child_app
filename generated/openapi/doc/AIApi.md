# etgy_openapi_client.api.AIApi

## Load the API package
```dart
import 'package:etgy_openapi_client/api.dart';
```

All URIs are relative to *http://8.148.215.20*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiAiRiskAlertsGet**](AIApi.md#apiairiskalertsget) | **GET** /api/ai/risk-alerts | AI 风险告警列表（学院/平台）
[**apiAiRiskAlertsIdHandlePatch**](AIApi.md#apiairiskalertsidhandlepatch) | **PATCH** /api/ai/risk-alerts/{id}/handle | 处理 AI 风险告警
[**apiAiTutorChatPost**](AIApi.md#apiaitutorchatpost) | **POST** /api/ai/tutor/chat | 儿童 AI 辅导对话
[**apiAiTutorConversationsGet**](AIApi.md#apiaitutorconversationsget) | **GET** /api/ai/tutor/conversations | 获取 AI 辅导会话列表（儿童）
[**apiAiTutorConversationsIdGet**](AIApi.md#apiaitutorconversationsidget) | **GET** /api/ai/tutor/conversations/{id} | 获取 AI 辅导会话详情（儿童）


# **apiAiRiskAlertsGet**
> ApiAiRiskAlertsGet200Response apiAiRiskAlertsGet(status, collegeId, page, pageSize)

AI 风险告警列表（学院/平台）

### Example
```dart
import 'package:etgy_openapi_client/api.dart';

final api = EtgyOpenapiClient().getAIApi();
final String status = status_example; // String | 
final int collegeId = 56; // int | 
final int page = 56; // int | 
final int pageSize = 56; // int | 

try {
    final response = api.apiAiRiskAlertsGet(status, collegeId, page, pageSize);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AIApi->apiAiRiskAlertsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **status** | **String**|  | [optional] 
 **collegeId** | **int**|  | [optional] 
 **page** | **int**|  | [optional] [default to 1]
 **pageSize** | **int**|  | [optional] [default to 20]

### Return type

[**ApiAiRiskAlertsGet200Response**](ApiAiRiskAlertsGet200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiAiRiskAlertsIdHandlePatch**
> ApiAiRiskAlertsIdHandlePatch200Response apiAiRiskAlertsIdHandlePatch(id, apiAiRiskAlertsIdHandlePatchRequest)

处理 AI 风险告警

### Example
```dart
import 'package:etgy_openapi_client/api.dart';

final api = EtgyOpenapiClient().getAIApi();
final String id = id_example; // String | 
final ApiAiRiskAlertsIdHandlePatchRequest apiAiRiskAlertsIdHandlePatchRequest = ; // ApiAiRiskAlertsIdHandlePatchRequest | 

try {
    final response = api.apiAiRiskAlertsIdHandlePatch(id, apiAiRiskAlertsIdHandlePatchRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AIApi->apiAiRiskAlertsIdHandlePatch: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **apiAiRiskAlertsIdHandlePatchRequest** | [**ApiAiRiskAlertsIdHandlePatchRequest**](ApiAiRiskAlertsIdHandlePatchRequest.md)|  | [optional] 

### Return type

[**ApiAiRiskAlertsIdHandlePatch200Response**](ApiAiRiskAlertsIdHandlePatch200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiAiTutorChatPost**
> ApiAiTutorChatPost200Response apiAiTutorChatPost(apiAiTutorChatPostRequest)

儿童 AI 辅导对话

### Example
```dart
import 'package:etgy_openapi_client/api.dart';

final api = EtgyOpenapiClient().getAIApi();
final ApiAiTutorChatPostRequest apiAiTutorChatPostRequest = ; // ApiAiTutorChatPostRequest | 

try {
    final response = api.apiAiTutorChatPost(apiAiTutorChatPostRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AIApi->apiAiTutorChatPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **apiAiTutorChatPostRequest** | [**ApiAiTutorChatPostRequest**](ApiAiTutorChatPostRequest.md)|  | [optional] 

### Return type

[**ApiAiTutorChatPost200Response**](ApiAiTutorChatPost200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiAiTutorConversationsGet**
> ApiAiTutorConversationsGet200Response apiAiTutorConversationsGet(page, pageSize)

获取 AI 辅导会话列表（儿童）

### Example
```dart
import 'package:etgy_openapi_client/api.dart';

final api = EtgyOpenapiClient().getAIApi();
final int page = 56; // int | 
final int pageSize = 56; // int | 

try {
    final response = api.apiAiTutorConversationsGet(page, pageSize);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AIApi->apiAiTutorConversationsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**|  | [optional] [default to 1]
 **pageSize** | **int**|  | [optional] [default to 20]

### Return type

[**ApiAiTutorConversationsGet200Response**](ApiAiTutorConversationsGet200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiAiTutorConversationsIdGet**
> ApiAiTutorConversationsIdGet200Response apiAiTutorConversationsIdGet(id)

获取 AI 辅导会话详情（儿童）

### Example
```dart
import 'package:etgy_openapi_client/api.dart';

final api = EtgyOpenapiClient().getAIApi();
final String id = id_example; // String | 

try {
    final response = api.apiAiTutorConversationsIdGet(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AIApi->apiAiTutorConversationsIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**ApiAiTutorConversationsIdGet200Response**](ApiAiTutorConversationsIdGet200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

