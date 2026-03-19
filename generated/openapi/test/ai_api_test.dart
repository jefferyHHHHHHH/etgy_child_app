import 'package:test/test.dart';
import 'package:etgy_openapi_client/etgy_openapi_client.dart';


/// tests for AIApi
void main() {
  final instance = EtgyOpenapiClient().getAIApi();

  group(AIApi, () {
    // AI 风险告警列表（学院/平台）
    //
    //Future<ApiAiRiskAlertsGet200Response> apiAiRiskAlertsGet({ String status, int collegeId, int page, int pageSize }) async
    test('test apiAiRiskAlertsGet', () async {
      // TODO
    });

    // 处理 AI 风险告警
    //
    //Future<ApiAiRiskAlertsIdHandlePatch200Response> apiAiRiskAlertsIdHandlePatch(String id, { ApiAiRiskAlertsIdHandlePatchRequest apiAiRiskAlertsIdHandlePatchRequest }) async
    test('test apiAiRiskAlertsIdHandlePatch', () async {
      // TODO
    });

    // 儿童 AI 辅导对话
    //
    //Future<ApiAiTutorChatPost200Response> apiAiTutorChatPost({ ApiAiTutorChatPostRequest apiAiTutorChatPostRequest }) async
    test('test apiAiTutorChatPost', () async {
      // TODO
    });

    // 获取 AI 辅导会话列表（儿童）
    //
    //Future<ApiAiTutorConversationsGet200Response> apiAiTutorConversationsGet({ int page, int pageSize }) async
    test('test apiAiTutorConversationsGet', () async {
      // TODO
    });

    // 获取 AI 辅导会话详情（儿童）
    //
    //Future<ApiAiTutorConversationsIdGet200Response> apiAiTutorConversationsIdGet(String id) async
    test('test apiAiTutorConversationsIdGet', () async {
      // TODO
    });

  });
}
