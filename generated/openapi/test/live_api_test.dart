import 'package:test/test.dart';
import 'package:etgy_openapi_client/etgy_openapi_client.dart';


/// tests for LiveApi
void main() {
  final instance = EtgyOpenapiClient().getLiveApi();

  group(LiveApi, () {
    // 管理端直播列表（学院/平台管理员）
    //
    //Future<ApiAuthRegisterPost201Response> apiLiveAdminGet({ String status, int collegeId, int anchorId, String search, int page, int pageSize }) async
    test('test apiLiveAdminGet', () async {
      // TODO
    });

    // 直播列表（公开）
    //
    //Future<ApiAuthRegisterPost201Response> apiLiveGet({ String tab, int collegeId, String search, int page, int pageSize }) async
    test('test apiLiveGet', () async {
      // TODO
    });

    // 获取 Agora RTC Token（登录用户）
    //
    //Future<ApiLiveIdAgoraRtcTokenPost200Response> apiLiveIdAgoraRtcTokenPost(String id) async
    test('test apiLiveIdAgoraRtcTokenPost', () async {
      // TODO
    });

    // 审核直播（学院管理员）
    //
    //Future<ApiLivePost201Response> apiLiveIdAuditPost(String id, { ApiVideosCommentsCommentIdAuditPostRequest apiVideosCommentsCommentIdAuditPostRequest }) async
    test('test apiLiveIdAuditPost', () async {
      // TODO
    });

    // 结束直播（志愿者）
    //
    //Future<ApiLivePost201Response> apiLiveIdFinishPost(String id, { ApiLiveIdFinishPostRequest apiLiveIdFinishPostRequest }) async
    test('test apiLiveIdFinishPost', () async {
      // TODO
    });

    // 直播详情（公开）
    //
    //Future<ApiLivePost201Response> apiLiveIdGet(String id) async
    test('test apiLiveIdGet', () async {
      // TODO
    });

    // 直播消息列表（登录用户）
    //
    //Future<ApiLiveIdMessagesGet200Response> apiLiveIdMessagesGet(String id, { int afterId, int limit }) async
    test('test apiLiveIdMessagesGet', () async {
      // TODO
    });

    // 发送直播消息（登录用户）
    //
    //Future<ApiLiveIdMessagesPost201Response> apiLiveIdMessagesPost(String id, { ApiLiveIdMessagesPostRequest apiLiveIdMessagesPostRequest }) async
    test('test apiLiveIdMessagesPost', () async {
      // TODO
    });

    // 下架直播（志愿者/管理员）
    //
    //Future<ApiLivePost201Response> apiLiveIdOfflinePost(String id, { ApiVideosIdOfflinePostRequest apiVideosIdOfflinePostRequest }) async
    test('test apiLiveIdOfflinePost', () async {
      // TODO
    });

    // 上架直播（志愿者）
    //
    //Future<ApiLivePost201Response> apiLiveIdPublishPost(String id) async
    test('test apiLiveIdPublishPost', () async {
      // TODO
    });

    // 开始直播（志愿者）
    //
    //Future<ApiLivePost201Response> apiLiveIdStartPost(String id) async
    test('test apiLiveIdStartPost', () async {
      // TODO
    });

    // 获取直播推/拉流信息（登录用户）
    //
    //Future<ApiAuthRegisterPost201Response> apiLiveIdStreamGet(String id) async
    test('test apiLiveIdStreamGet', () async {
      // TODO
    });

    // 提交直播审核（志愿者）
    //
    //Future<ApiLivePost201Response> apiLiveIdSubmitPost(String id) async
    test('test apiLiveIdSubmitPost', () async {
      // TODO
    });

    // 我的直播列表（志愿者）
    //
    //Future<ApiAuthRegisterPost201Response> apiLiveMineGet({ String status, int page, int pageSize }) async
    test('test apiLiveMineGet', () async {
      // TODO
    });

    // 创建直播草稿（志愿者）
    //
    //Future<ApiLivePost201Response> apiLivePost({ ApiLivePostRequest apiLivePostRequest }) async
    test('test apiLivePost', () async {
      // TODO
    });

  });
}
