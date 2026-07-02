# etgy_openapi_client.api.LiveApi

## Load the API package
```dart
import 'package:etgy_openapi_client/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiLiveAdminGet**](LiveApi.md#apiliveadminget) | **GET** /api/live/admin | 管理端直播列表（学院/平台管理员）
[**apiLiveGet**](LiveApi.md#apiliveget) | **GET** /api/live | 直播列表（公开）
[**apiLiveIdAgoraRtcTokenPost**](LiveApi.md#apiliveidagorartctokenpost) | **POST** /api/live/{id}/agora/rtc-token | 获取 Agora RTC Token（登录用户）
[**apiLiveIdAuditPost**](LiveApi.md#apiliveidauditpost) | **POST** /api/live/{id}/audit | 审核直播（学院管理员）
[**apiLiveIdFinishPost**](LiveApi.md#apiliveidfinishpost) | **POST** /api/live/{id}/finish | 结束直播（志愿者）
[**apiLiveIdGet**](LiveApi.md#apiliveidget) | **GET** /api/live/{id} | 直播详情（公开）
[**apiLiveIdMessagesGet**](LiveApi.md#apiliveidmessagesget) | **GET** /api/live/{id}/messages | 直播消息列表（登录用户）
[**apiLiveIdMessagesPost**](LiveApi.md#apiliveidmessagespost) | **POST** /api/live/{id}/messages | 发送直播消息（登录用户）
[**apiLiveIdOfflinePost**](LiveApi.md#apiliveidofflinepost) | **POST** /api/live/{id}/offline | 下架直播（志愿者/管理员）
[**apiLiveIdPublishPost**](LiveApi.md#apiliveidpublishpost) | **POST** /api/live/{id}/publish | 上架直播（志愿者）
[**apiLiveIdStartPost**](LiveApi.md#apiliveidstartpost) | **POST** /api/live/{id}/start | 开始直播（志愿者）
[**apiLiveIdStreamGet**](LiveApi.md#apiliveidstreamget) | **GET** /api/live/{id}/stream | 获取直播推/拉流信息（登录用户）
[**apiLiveIdSubmitPost**](LiveApi.md#apiliveidsubmitpost) | **POST** /api/live/{id}/submit | 提交直播审核（志愿者）
[**apiLiveMineGet**](LiveApi.md#apilivemineget) | **GET** /api/live/mine | 我的直播列表（志愿者）
[**apiLivePost**](LiveApi.md#apilivepost) | **POST** /api/live | 创建直播草稿（志愿者）


# **apiLiveAdminGet**
> ApiLiveGet200Response apiLiveAdminGet(status, collegeId, anchorId, search, page, pageSize)

管理端直播列表（学院/平台管理员）

### Example
```dart
import 'package:etgy_openapi_client/api.dart';

final api = EtgyOpenapiClient().getLiveApi();
final String status = status_example; // String | 默认 REVIEW
final int collegeId = 56; // int | 
final int anchorId = 56; // int | 
final String search = search_example; // String | 
final int page = 56; // int | 
final int pageSize = 56; // int | 

try {
    final response = api.apiLiveAdminGet(status, collegeId, anchorId, search, page, pageSize);
    print(response);
} on DioException catch (e) {
    print('Exception when calling LiveApi->apiLiveAdminGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **status** | **String**| 默认 REVIEW | [optional] 
 **collegeId** | **int**|  | [optional] 
 **anchorId** | **int**|  | [optional] 
 **search** | **String**|  | [optional] 
 **page** | **int**|  | [optional] [default to 1]
 **pageSize** | **int**|  | [optional] [default to 20]

### Return type

[**ApiLiveGet200Response**](ApiLiveGet200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiLiveGet**
> ApiLiveGet200Response apiLiveGet(tab, collegeId, search, page, pageSize)

直播列表（公开）

### Example
```dart
import 'package:etgy_openapi_client/api.dart';

final api = EtgyOpenapiClient().getLiveApi();
final String tab = tab_example; // String | 
final int collegeId = 56; // int | 
final String search = search_example; // String | 
final int page = 56; // int | 
final int pageSize = 56; // int | 

try {
    final response = api.apiLiveGet(tab, collegeId, search, page, pageSize);
    print(response);
} on DioException catch (e) {
    print('Exception when calling LiveApi->apiLiveGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tab** | **String**|  | [optional] 
 **collegeId** | **int**|  | [optional] 
 **search** | **String**|  | [optional] 
 **page** | **int**|  | [optional] [default to 1]
 **pageSize** | **int**|  | [optional] [default to 20]

### Return type

[**ApiLiveGet200Response**](ApiLiveGet200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiLiveIdAgoraRtcTokenPost**
> ApiLiveIdAgoraRtcTokenPost200Response apiLiveIdAgoraRtcTokenPost(id)

获取 Agora RTC Token（登录用户）

### Example
```dart
import 'package:etgy_openapi_client/api.dart';

final api = EtgyOpenapiClient().getLiveApi();
final String id = id_example; // String | 

try {
    final response = api.apiLiveIdAgoraRtcTokenPost(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling LiveApi->apiLiveIdAgoraRtcTokenPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**ApiLiveIdAgoraRtcTokenPost200Response**](ApiLiveIdAgoraRtcTokenPost200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiLiveIdAuditPost**
> ApiLivePost201Response apiLiveIdAuditPost(id, apiVideosCommentsCommentIdAuditPostRequest)

审核直播（学院管理员）

### Example
```dart
import 'package:etgy_openapi_client/api.dart';

final api = EtgyOpenapiClient().getLiveApi();
final String id = id_example; // String | 
final ApiVideosCommentsCommentIdAuditPostRequest apiVideosCommentsCommentIdAuditPostRequest = ; // ApiVideosCommentsCommentIdAuditPostRequest | 

try {
    final response = api.apiLiveIdAuditPost(id, apiVideosCommentsCommentIdAuditPostRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling LiveApi->apiLiveIdAuditPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **apiVideosCommentsCommentIdAuditPostRequest** | [**ApiVideosCommentsCommentIdAuditPostRequest**](ApiVideosCommentsCommentIdAuditPostRequest.md)|  | [optional] 

### Return type

[**ApiLivePost201Response**](ApiLivePost201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiLiveIdFinishPost**
> ApiLivePost201Response apiLiveIdFinishPost(id, apiLiveIdFinishPostRequest)

结束直播（志愿者）

### Example
```dart
import 'package:etgy_openapi_client/api.dart';

final api = EtgyOpenapiClient().getLiveApi();
final String id = id_example; // String | 
final ApiLiveIdFinishPostRequest apiLiveIdFinishPostRequest = ; // ApiLiveIdFinishPostRequest | 

try {
    final response = api.apiLiveIdFinishPost(id, apiLiveIdFinishPostRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling LiveApi->apiLiveIdFinishPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **apiLiveIdFinishPostRequest** | [**ApiLiveIdFinishPostRequest**](ApiLiveIdFinishPostRequest.md)|  | [optional] 

### Return type

[**ApiLivePost201Response**](ApiLivePost201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiLiveIdGet**
> ApiLivePost201Response apiLiveIdGet(id)

直播详情（公开）

### Example
```dart
import 'package:etgy_openapi_client/api.dart';

final api = EtgyOpenapiClient().getLiveApi();
final String id = id_example; // String | 

try {
    final response = api.apiLiveIdGet(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling LiveApi->apiLiveIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**ApiLivePost201Response**](ApiLivePost201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiLiveIdMessagesGet**
> ApiLiveIdMessagesGet200Response apiLiveIdMessagesGet(id, afterId, limit)

直播消息列表（登录用户）

### Example
```dart
import 'package:etgy_openapi_client/api.dart';

final api = EtgyOpenapiClient().getLiveApi();
final String id = id_example; // String | 
final int afterId = 56; // int | 
final int limit = 56; // int | 

try {
    final response = api.apiLiveIdMessagesGet(id, afterId, limit);
    print(response);
} on DioException catch (e) {
    print('Exception when calling LiveApi->apiLiveIdMessagesGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **afterId** | **int**|  | [optional] 
 **limit** | **int**|  | [optional] 

### Return type

[**ApiLiveIdMessagesGet200Response**](ApiLiveIdMessagesGet200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiLiveIdMessagesPost**
> ApiLiveIdMessagesPost201Response apiLiveIdMessagesPost(id, apiLiveIdMessagesPostRequest)

发送直播消息（登录用户）

### Example
```dart
import 'package:etgy_openapi_client/api.dart';

final api = EtgyOpenapiClient().getLiveApi();
final String id = id_example; // String | 
final ApiLiveIdMessagesPostRequest apiLiveIdMessagesPostRequest = ; // ApiLiveIdMessagesPostRequest | 

try {
    final response = api.apiLiveIdMessagesPost(id, apiLiveIdMessagesPostRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling LiveApi->apiLiveIdMessagesPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **apiLiveIdMessagesPostRequest** | [**ApiLiveIdMessagesPostRequest**](ApiLiveIdMessagesPostRequest.md)|  | [optional] 

### Return type

[**ApiLiveIdMessagesPost201Response**](ApiLiveIdMessagesPost201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiLiveIdOfflinePost**
> ApiLivePost201Response apiLiveIdOfflinePost(id, apiVideosIdOfflinePostRequest)

下架直播（志愿者/管理员）

### Example
```dart
import 'package:etgy_openapi_client/api.dart';

final api = EtgyOpenapiClient().getLiveApi();
final String id = id_example; // String | 
final ApiVideosIdOfflinePostRequest apiVideosIdOfflinePostRequest = ; // ApiVideosIdOfflinePostRequest | 

try {
    final response = api.apiLiveIdOfflinePost(id, apiVideosIdOfflinePostRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling LiveApi->apiLiveIdOfflinePost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **apiVideosIdOfflinePostRequest** | [**ApiVideosIdOfflinePostRequest**](ApiVideosIdOfflinePostRequest.md)|  | [optional] 

### Return type

[**ApiLivePost201Response**](ApiLivePost201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiLiveIdPublishPost**
> ApiLivePost201Response apiLiveIdPublishPost(id)

上架直播（志愿者）

### Example
```dart
import 'package:etgy_openapi_client/api.dart';

final api = EtgyOpenapiClient().getLiveApi();
final String id = id_example; // String | 

try {
    final response = api.apiLiveIdPublishPost(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling LiveApi->apiLiveIdPublishPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**ApiLivePost201Response**](ApiLivePost201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiLiveIdStartPost**
> ApiLivePost201Response apiLiveIdStartPost(id)

开始直播（志愿者）

### Example
```dart
import 'package:etgy_openapi_client/api.dart';

final api = EtgyOpenapiClient().getLiveApi();
final String id = id_example; // String | 

try {
    final response = api.apiLiveIdStartPost(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling LiveApi->apiLiveIdStartPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**ApiLivePost201Response**](ApiLivePost201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiLiveIdStreamGet**
> ApiLiveIdStreamGet200Response apiLiveIdStreamGet(id)

获取直播推/拉流信息（登录用户）

### Example
```dart
import 'package:etgy_openapi_client/api.dart';

final api = EtgyOpenapiClient().getLiveApi();
final String id = id_example; // String | 

try {
    final response = api.apiLiveIdStreamGet(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling LiveApi->apiLiveIdStreamGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**ApiLiveIdStreamGet200Response**](ApiLiveIdStreamGet200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiLiveIdSubmitPost**
> ApiLivePost201Response apiLiveIdSubmitPost(id)

提交直播审核（志愿者）

### Example
```dart
import 'package:etgy_openapi_client/api.dart';

final api = EtgyOpenapiClient().getLiveApi();
final String id = id_example; // String | 

try {
    final response = api.apiLiveIdSubmitPost(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling LiveApi->apiLiveIdSubmitPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**ApiLivePost201Response**](ApiLivePost201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiLiveMineGet**
> ApiLiveGet200Response apiLiveMineGet(status, page, pageSize)

我的直播列表（志愿者）

### Example
```dart
import 'package:etgy_openapi_client/api.dart';

final api = EtgyOpenapiClient().getLiveApi();
final String status = status_example; // String | 
final int page = 56; // int | 
final int pageSize = 56; // int | 

try {
    final response = api.apiLiveMineGet(status, page, pageSize);
    print(response);
} on DioException catch (e) {
    print('Exception when calling LiveApi->apiLiveMineGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **status** | **String**|  | [optional] 
 **page** | **int**|  | [optional] [default to 1]
 **pageSize** | **int**|  | [optional] [default to 20]

### Return type

[**ApiLiveGet200Response**](ApiLiveGet200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiLivePost**
> ApiLivePost201Response apiLivePost(apiLivePostRequest)

创建直播草稿（志愿者）

### Example
```dart
import 'package:etgy_openapi_client/api.dart';

final api = EtgyOpenapiClient().getLiveApi();
final ApiLivePostRequest apiLivePostRequest = ; // ApiLivePostRequest | 

try {
    final response = api.apiLivePost(apiLivePostRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling LiveApi->apiLivePost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **apiLivePostRequest** | [**ApiLivePostRequest**](ApiLivePostRequest.md)|  | [optional] 

### Return type

[**ApiLivePost201Response**](ApiLivePost201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

