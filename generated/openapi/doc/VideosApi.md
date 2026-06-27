# etgy_openapi_client.api.VideosApi

## Load the API package
```dart
import 'package:etgy_openapi_client/api.dart';
```

All URIs are relative to *http://8.166.115.78*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiVideosAdminGet**](VideosApi.md#apivideosadminget) | **GET** /api/videos/admin | 管理端视频列表（学院/平台管理员）
[**apiVideosAuditBatchPost**](VideosApi.md#apivideosauditbatchpost) | **POST** /api/videos/audit/batch | 批量审核视频（学院管理员）
[**apiVideosCommentsCommentIdAuditPost**](VideosApi.md#apivideoscommentscommentidauditpost) | **POST** /api/videos/comments/{commentId}/audit | 审核评论（管理员）
[**apiVideosGet**](VideosApi.md#apivideosget) | **GET** /api/videos | 获取视频列表（公开）
[**apiVideosIdAuditPost**](VideosApi.md#apivideosidauditpost) | **POST** /api/videos/{id}/audit | 审核视频（学院管理员）
[**apiVideosIdCommentsGet**](VideosApi.md#apivideosidcommentsget) | **GET** /api/videos/{id}/comments | 获取视频评论列表（公开：仅已通过）
[**apiVideosIdCommentsPost**](VideosApi.md#apivideosidcommentspost) | **POST** /api/videos/{id}/comments | 发表评论（儿童/登录用户，默认待审核）
[**apiVideosIdDelete**](VideosApi.md#apivideosiddelete) | **DELETE** /api/videos/{id} | 删除视频（志愿者：草稿/驳回）
[**apiVideosIdFavoritePost**](VideosApi.md#apivideosidfavoritepost) | **POST** /api/videos/{id}/favorite | 收藏/取消收藏（登录用户）
[**apiVideosIdGet**](VideosApi.md#apivideosidget) | **GET** /api/videos/{id} | 获取视频详情（公开）
[**apiVideosIdLikePost**](VideosApi.md#apivideosidlikepost) | **POST** /api/videos/{id}/like | 点赞/取消点赞（登录用户）
[**apiVideosIdMediaUrlsGet**](VideosApi.md#apivideosidmediaurlsget) | **GET** /api/videos/{id}/media-urls | 获取视频/封面临时访问 URL（私有桶预签名）
[**apiVideosIdOfflinePost**](VideosApi.md#apivideosidofflinepost) | **POST** /api/videos/{id}/offline | 下架视频（志愿者/管理员）
[**apiVideosIdPatch**](VideosApi.md#apivideosidpatch) | **PATCH** /api/videos/{id} | 编辑视频（志愿者：草稿/驳回）
[**apiVideosIdPublishPost**](VideosApi.md#apivideosidpublishpost) | **POST** /api/videos/{id}/publish | 发布视频（志愿者）
[**apiVideosIdSubmitPost**](VideosApi.md#apivideosidsubmitpost) | **POST** /api/videos/{id}/submit | 提交视频审核（志愿者）
[**apiVideosIdWatchPost**](VideosApi.md#apivideosidwatchpost) | **POST** /api/videos/{id}/watch | 上报学习/播放记录（登录用户）
[**apiVideosMineDashboardGet**](VideosApi.md#apivideosminedashboardget) | **GET** /api/videos/mine/dashboard | 志愿者视频数据面板（我的）
[**apiVideosMineGet**](VideosApi.md#apivideosmineget) | **GET** /api/videos/mine | 志愿者查看我的视频列表（可按状态筛选）
[**apiVideosMineIdGet**](VideosApi.md#apivideosmineidget) | **GET** /api/videos/mine/{id} | 志愿者获取我的视频详情（含未发布）
[**apiVideosMineIdMediaUrlsGet**](VideosApi.md#apivideosmineidmediaurlsget) | **GET** /api/videos/mine/{id}/media-urls | 志愿者获取我的视频/封面临时访问 URL（仅本人）
[**apiVideosPost**](VideosApi.md#apivideospost) | **POST** /api/videos | 创建视频草稿（志愿者）
[**apiVideosWatchLogsGet**](VideosApi.md#apivideoswatchlogsget) | **GET** /api/videos/watch-logs | 获取我的学习/播放记录（登录用户）


# **apiVideosAdminGet**
> ApiVideosAdminGet200Response apiVideosAdminGet(status, collegeId, uploaderId, search, grade, subject, sort, page, pageSize)

管理端视频列表（学院/平台管理员）

管理端使用：学院管理员默认返回待审核(REVIEW)视频；平台管理员默认返回全量状态视频。可按 status/collegeId/uploaderId/search 等筛选。返回结果会附带 video/cover 的 presigned GET URL（用于列表预览/播放）。

### Example
```dart
import 'package:etgy_openapi_client/api.dart';

final api = EtgyOpenapiClient().getVideosApi();
final String status = status_example; // String | 
final int collegeId = 56; // int | 
final int uploaderId = 56; // int | 
final String search = search_example; // String | 
final String grade = grade_example; // String | 
final String subject = subject_example; // String | 
final String sort = sort_example; // String | 
final int page = 56; // int | 
final int pageSize = 56; // int | 

try {
    final response = api.apiVideosAdminGet(status, collegeId, uploaderId, search, grade, subject, sort, page, pageSize);
    print(response);
} on DioException catch (e) {
    print('Exception when calling VideosApi->apiVideosAdminGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **status** | **String**|  | [optional] 
 **collegeId** | **int**|  | [optional] 
 **uploaderId** | **int**|  | [optional] 
 **search** | **String**|  | [optional] 
 **grade** | **String**|  | [optional] 
 **subject** | **String**|  | [optional] 
 **sort** | **String**|  | [optional] [default to 'latest']
 **page** | **int**|  | [optional] [default to 1]
 **pageSize** | **int**|  | [optional] [default to 20]

### Return type

[**ApiVideosAdminGet200Response**](ApiVideosAdminGet200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiVideosAuditBatchPost**
> ApiAuthRegisterPost201Response apiVideosAuditBatchPost(apiVideosAuditBatchPostRequest)

批量审核视频（学院管理员）

### Example
```dart
import 'package:etgy_openapi_client/api.dart';

final api = EtgyOpenapiClient().getVideosApi();
final ApiVideosAuditBatchPostRequest apiVideosAuditBatchPostRequest = ; // ApiVideosAuditBatchPostRequest | 

try {
    final response = api.apiVideosAuditBatchPost(apiVideosAuditBatchPostRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling VideosApi->apiVideosAuditBatchPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **apiVideosAuditBatchPostRequest** | [**ApiVideosAuditBatchPostRequest**](ApiVideosAuditBatchPostRequest.md)|  | [optional] 

### Return type

[**ApiAuthRegisterPost201Response**](ApiAuthRegisterPost201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiVideosCommentsCommentIdAuditPost**
> ApiVideosIdCommentsPost201Response apiVideosCommentsCommentIdAuditPost(commentId, apiVideosCommentsCommentIdAuditPostRequest)

审核评论（管理员）

### Example
```dart
import 'package:etgy_openapi_client/api.dart';

final api = EtgyOpenapiClient().getVideosApi();
final String commentId = commentId_example; // String | 
final ApiVideosCommentsCommentIdAuditPostRequest apiVideosCommentsCommentIdAuditPostRequest = ; // ApiVideosCommentsCommentIdAuditPostRequest | 

try {
    final response = api.apiVideosCommentsCommentIdAuditPost(commentId, apiVideosCommentsCommentIdAuditPostRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling VideosApi->apiVideosCommentsCommentIdAuditPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **commentId** | **String**|  | 
 **apiVideosCommentsCommentIdAuditPostRequest** | [**ApiVideosCommentsCommentIdAuditPostRequest**](ApiVideosCommentsCommentIdAuditPostRequest.md)|  | [optional] 

### Return type

[**ApiVideosIdCommentsPost201Response**](ApiVideosIdCommentsPost201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiVideosGet**
> ApiVideosGet200Response apiVideosGet(status, collegeId, uploaderId, search, grade, subject, sort, page, pageSize)

获取视频列表（公开）

游客/儿童仅可获取已发布(PUBLISHED)内容；search 或请求非 PUBLISHED 时需登录。

### Example
```dart
import 'package:etgy_openapi_client/api.dart';

final api = EtgyOpenapiClient().getVideosApi();
final String status = status_example; // String | 
final int collegeId = 56; // int | 
final int uploaderId = 56; // int | 
final String search = search_example; // String | 
final String grade = grade_example; // String | 
final String subject = subject_example; // String | 
final String sort = sort_example; // String | 
final int page = 56; // int | 
final int pageSize = 56; // int | 

try {
    final response = api.apiVideosGet(status, collegeId, uploaderId, search, grade, subject, sort, page, pageSize);
    print(response);
} on DioException catch (e) {
    print('Exception when calling VideosApi->apiVideosGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **status** | **String**|  | [optional] 
 **collegeId** | **int**|  | [optional] 
 **uploaderId** | **int**|  | [optional] 
 **search** | **String**|  | [optional] 
 **grade** | **String**|  | [optional] 
 **subject** | **String**|  | [optional] 
 **sort** | **String**|  | [optional] [default to 'latest']
 **page** | **int**|  | [optional] [default to 1]
 **pageSize** | **int**|  | [optional] [default to 20]

### Return type

[**ApiVideosGet200Response**](ApiVideosGet200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiVideosIdAuditPost**
> ApiVideosPost201Response apiVideosIdAuditPost(id, apiVideosCommentsCommentIdAuditPostRequest)

审核视频（学院管理员）

### Example
```dart
import 'package:etgy_openapi_client/api.dart';

final api = EtgyOpenapiClient().getVideosApi();
final String id = id_example; // String | 
final ApiVideosCommentsCommentIdAuditPostRequest apiVideosCommentsCommentIdAuditPostRequest = ; // ApiVideosCommentsCommentIdAuditPostRequest | 

try {
    final response = api.apiVideosIdAuditPost(id, apiVideosCommentsCommentIdAuditPostRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling VideosApi->apiVideosIdAuditPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **apiVideosCommentsCommentIdAuditPostRequest** | [**ApiVideosCommentsCommentIdAuditPostRequest**](ApiVideosCommentsCommentIdAuditPostRequest.md)|  | [optional] 

### Return type

[**ApiVideosPost201Response**](ApiVideosPost201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiVideosIdCommentsGet**
> ApiVideosIdCommentsGet200Response apiVideosIdCommentsGet(id, page, pageSize)

获取视频评论列表（公开：仅已通过）

### Example
```dart
import 'package:etgy_openapi_client/api.dart';

final api = EtgyOpenapiClient().getVideosApi();
final String id = id_example; // String | 
final int page = 56; // int | 
final int pageSize = 56; // int | 

try {
    final response = api.apiVideosIdCommentsGet(id, page, pageSize);
    print(response);
} on DioException catch (e) {
    print('Exception when calling VideosApi->apiVideosIdCommentsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **page** | **int**|  | [optional] [default to 1]
 **pageSize** | **int**|  | [optional] [default to 20]

### Return type

[**ApiVideosIdCommentsGet200Response**](ApiVideosIdCommentsGet200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiVideosIdCommentsPost**
> ApiVideosIdCommentsPost201Response apiVideosIdCommentsPost(id, apiVideosIdCommentsPostRequest)

发表评论（儿童/登录用户，默认待审核）

### Example
```dart
import 'package:etgy_openapi_client/api.dart';

final api = EtgyOpenapiClient().getVideosApi();
final String id = id_example; // String | 
final ApiVideosIdCommentsPostRequest apiVideosIdCommentsPostRequest = ; // ApiVideosIdCommentsPostRequest | 

try {
    final response = api.apiVideosIdCommentsPost(id, apiVideosIdCommentsPostRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling VideosApi->apiVideosIdCommentsPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **apiVideosIdCommentsPostRequest** | [**ApiVideosIdCommentsPostRequest**](ApiVideosIdCommentsPostRequest.md)|  | [optional] 

### Return type

[**ApiVideosIdCommentsPost201Response**](ApiVideosIdCommentsPost201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiVideosIdDelete**
> ApiAuthRegisterPost201Response apiVideosIdDelete(id)

删除视频（志愿者：草稿/驳回）

### Example
```dart
import 'package:etgy_openapi_client/api.dart';

final api = EtgyOpenapiClient().getVideosApi();
final String id = id_example; // String | 

try {
    final response = api.apiVideosIdDelete(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling VideosApi->apiVideosIdDelete: $e\n');
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

# **apiVideosIdFavoritePost**
> ApiAuthRegisterPost201Response apiVideosIdFavoritePost(id)

收藏/取消收藏（登录用户）

### Example
```dart
import 'package:etgy_openapi_client/api.dart';

final api = EtgyOpenapiClient().getVideosApi();
final String id = id_example; // String | 

try {
    final response = api.apiVideosIdFavoritePost(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling VideosApi->apiVideosIdFavoritePost: $e\n');
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

# **apiVideosIdGet**
> ApiVideosPost201Response apiVideosIdGet(id)

获取视频详情（公开）

### Example
```dart
import 'package:etgy_openapi_client/api.dart';

final api = EtgyOpenapiClient().getVideosApi();
final String id = id_example; // String | 

try {
    final response = api.apiVideosIdGet(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling VideosApi->apiVideosIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**ApiVideosPost201Response**](ApiVideosPost201Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiVideosIdLikePost**
> ApiAuthRegisterPost201Response apiVideosIdLikePost(id)

点赞/取消点赞（登录用户）

### Example
```dart
import 'package:etgy_openapi_client/api.dart';

final api = EtgyOpenapiClient().getVideosApi();
final String id = id_example; // String | 

try {
    final response = api.apiVideosIdLikePost(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling VideosApi->apiVideosIdLikePost: $e\n');
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

# **apiVideosIdMediaUrlsGet**
> ApiAuthRegisterPost201Response apiVideosIdMediaUrlsGet(id)

获取视频/封面临时访问 URL（私有桶预签名）

返回视频与封面图的 presigned GET URL。游客仅能获取已发布(PUBLISHED)视频。

### Example
```dart
import 'package:etgy_openapi_client/api.dart';

final api = EtgyOpenapiClient().getVideosApi();
final String id = id_example; // String | 

try {
    final response = api.apiVideosIdMediaUrlsGet(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling VideosApi->apiVideosIdMediaUrlsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**ApiAuthRegisterPost201Response**](ApiAuthRegisterPost201Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiVideosIdOfflinePost**
> ApiVideosPost201Response apiVideosIdOfflinePost(id, apiVideosIdOfflinePostRequest)

下架视频（志愿者/管理员）

### Example
```dart
import 'package:etgy_openapi_client/api.dart';

final api = EtgyOpenapiClient().getVideosApi();
final String id = id_example; // String | 
final ApiVideosIdOfflinePostRequest apiVideosIdOfflinePostRequest = ; // ApiVideosIdOfflinePostRequest | 

try {
    final response = api.apiVideosIdOfflinePost(id, apiVideosIdOfflinePostRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling VideosApi->apiVideosIdOfflinePost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **apiVideosIdOfflinePostRequest** | [**ApiVideosIdOfflinePostRequest**](ApiVideosIdOfflinePostRequest.md)|  | [optional] 

### Return type

[**ApiVideosPost201Response**](ApiVideosPost201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiVideosIdPatch**
> ApiVideosPost201Response apiVideosIdPatch(id, apiVideosIdPatchRequest)

编辑视频（志愿者：草稿/驳回）

### Example
```dart
import 'package:etgy_openapi_client/api.dart';

final api = EtgyOpenapiClient().getVideosApi();
final String id = id_example; // String | 
final ApiVideosIdPatchRequest apiVideosIdPatchRequest = ; // ApiVideosIdPatchRequest | 

try {
    final response = api.apiVideosIdPatch(id, apiVideosIdPatchRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling VideosApi->apiVideosIdPatch: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **apiVideosIdPatchRequest** | [**ApiVideosIdPatchRequest**](ApiVideosIdPatchRequest.md)|  | [optional] 

### Return type

[**ApiVideosPost201Response**](ApiVideosPost201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiVideosIdPublishPost**
> ApiVideosPost201Response apiVideosIdPublishPost(id)

发布视频（志愿者）

### Example
```dart
import 'package:etgy_openapi_client/api.dart';

final api = EtgyOpenapiClient().getVideosApi();
final String id = id_example; // String | 

try {
    final response = api.apiVideosIdPublishPost(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling VideosApi->apiVideosIdPublishPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**ApiVideosPost201Response**](ApiVideosPost201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiVideosIdSubmitPost**
> BaseResponse apiVideosIdSubmitPost(id)

提交视频审核（志愿者）

### Example
```dart
import 'package:etgy_openapi_client/api.dart';

final api = EtgyOpenapiClient().getVideosApi();
final String id = id_example; // String | 

try {
    final response = api.apiVideosIdSubmitPost(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling VideosApi->apiVideosIdSubmitPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**BaseResponse**](BaseResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiVideosIdWatchPost**
> ApiVideosIdWatchPost200Response apiVideosIdWatchPost(id, apiVideosIdWatchPostRequest)

上报学习/播放记录（登录用户）

### Example
```dart
import 'package:etgy_openapi_client/api.dart';

final api = EtgyOpenapiClient().getVideosApi();
final String id = id_example; // String | 
final ApiVideosIdWatchPostRequest apiVideosIdWatchPostRequest = ; // ApiVideosIdWatchPostRequest | 

try {
    final response = api.apiVideosIdWatchPost(id, apiVideosIdWatchPostRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling VideosApi->apiVideosIdWatchPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **apiVideosIdWatchPostRequest** | [**ApiVideosIdWatchPostRequest**](ApiVideosIdWatchPostRequest.md)|  | [optional] 

### Return type

[**ApiVideosIdWatchPost200Response**](ApiVideosIdWatchPost200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiVideosMineDashboardGet**
> ApiAuthRegisterPost201Response apiVideosMineDashboardGet()

志愿者视频数据面板（我的）

### Example
```dart
import 'package:etgy_openapi_client/api.dart';

final api = EtgyOpenapiClient().getVideosApi();

try {
    final response = api.apiVideosMineDashboardGet();
    print(response);
} on DioException catch (e) {
    print('Exception when calling VideosApi->apiVideosMineDashboardGet: $e\n');
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

# **apiVideosMineGet**
> ApiVideosGet200Response apiVideosMineGet(status, search, grade, subject, sort, page, pageSize)

志愿者查看我的视频列表（可按状态筛选）

返回我的视频列表，并将每条视频的 url/coverUrl 自动转换为可播放的 presigned GET URL（便于前端直接预览/播放）。status=ALL 表示不按状态筛选。

### Example
```dart
import 'package:etgy_openapi_client/api.dart';

final api = EtgyOpenapiClient().getVideosApi();
final String status = status_example; // String | 按视频状态筛选（如 REVIEW/REJECTED/APPROVED/PUBLISHED 等）；传 ALL 表示不按状态筛选
final String search = search_example; // String | 按标题/简介模糊搜索（仅我的视频）
final String grade = grade_example; // String | 
final String subject = subject_example; // String | 
final String sort = sort_example; // String | 
final int page = 56; // int | 
final int pageSize = 56; // int | 

try {
    final response = api.apiVideosMineGet(status, search, grade, subject, sort, page, pageSize);
    print(response);
} on DioException catch (e) {
    print('Exception when calling VideosApi->apiVideosMineGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **status** | **String**| 按视频状态筛选（如 REVIEW/REJECTED/APPROVED/PUBLISHED 等）；传 ALL 表示不按状态筛选 | [optional] 
 **search** | **String**| 按标题/简介模糊搜索（仅我的视频） | [optional] 
 **grade** | **String**|  | [optional] 
 **subject** | **String**|  | [optional] 
 **sort** | **String**|  | [optional] [default to 'latest']
 **page** | **int**|  | [optional] [default to 1]
 **pageSize** | **int**|  | [optional] [default to 20]

### Return type

[**ApiVideosGet200Response**](ApiVideosGet200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiVideosMineIdGet**
> ApiVideosPost201Response apiVideosMineIdGet(id)

志愿者获取我的视频详情（含未发布）

仅返回当前登录志愿者自己上传的视频；不会返回他人的视频（即使已发布）。

### Example
```dart
import 'package:etgy_openapi_client/api.dart';

final api = EtgyOpenapiClient().getVideosApi();
final String id = id_example; // String | 

try {
    final response = api.apiVideosMineIdGet(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling VideosApi->apiVideosMineIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**ApiVideosPost201Response**](ApiVideosPost201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiVideosMineIdMediaUrlsGet**
> ApiAuthRegisterPost201Response apiVideosMineIdMediaUrlsGet(id)

志愿者获取我的视频/封面临时访问 URL（仅本人）

返回当前登录志愿者自己上传视频的 presigned GET URL（含封面）。不会返回他人的视频。

### Example
```dart
import 'package:etgy_openapi_client/api.dart';

final api = EtgyOpenapiClient().getVideosApi();
final String id = id_example; // String | 

try {
    final response = api.apiVideosMineIdMediaUrlsGet(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling VideosApi->apiVideosMineIdMediaUrlsGet: $e\n');
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

# **apiVideosPost**
> ApiVideosPost201Response apiVideosPost(apiVideosPostRequest)

创建视频草稿（志愿者）

### Example
```dart
import 'package:etgy_openapi_client/api.dart';

final api = EtgyOpenapiClient().getVideosApi();
final ApiVideosPostRequest apiVideosPostRequest = ; // ApiVideosPostRequest | Create video draft

try {
    final response = api.apiVideosPost(apiVideosPostRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling VideosApi->apiVideosPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **apiVideosPostRequest** | [**ApiVideosPostRequest**](ApiVideosPostRequest.md)| Create video draft | [optional] 

### Return type

[**ApiVideosPost201Response**](ApiVideosPost201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiVideosWatchLogsGet**
> ApiVideosWatchLogsGet200Response apiVideosWatchLogsGet(videoId, completed, page, pageSize)

获取我的学习/播放记录（登录用户）

### Example
```dart
import 'package:etgy_openapi_client/api.dart';

final api = EtgyOpenapiClient().getVideosApi();
final int videoId = 56; // int | 
final bool completed = true; // bool | 
final int page = 56; // int | 
final int pageSize = 56; // int | 

try {
    final response = api.apiVideosWatchLogsGet(videoId, completed, page, pageSize);
    print(response);
} on DioException catch (e) {
    print('Exception when calling VideosApi->apiVideosWatchLogsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **videoId** | **int**|  | [optional] 
 **completed** | **bool**|  | [optional] 
 **page** | **int**|  | [optional] [default to 1]
 **pageSize** | **int**|  | [optional] [default to 20]

### Return type

[**ApiVideosWatchLogsGet200Response**](ApiVideosWatchLogsGet200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

