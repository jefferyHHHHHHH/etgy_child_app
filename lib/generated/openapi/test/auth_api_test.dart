import 'package:test/test.dart';
import 'package:etgy_openapi_client/etgy_openapi_client.dart';


/// tests for AuthApi
void main() {
  final instance = EtgyOpenapiClient().getAuthApi();

  group(AuthApi, () {
    // 登录
    //
    //Future<ApiAuthLoginPost200Response> apiAuthLoginPost({ ApiAuthLoginPostRequest apiAuthLoginPostRequest }) async
    test('test apiAuthLoginPost', () async {
      // TODO
    });

    // 退出登录
    //
    //Future<BaseResponse> apiAuthLogoutPost() async
    test('test apiAuthLogoutPost', () async {
      // TODO
    });

    // 注册（开发辅助）
    //
    //Future<ApiAuthRegisterPost201Response> apiAuthRegisterPost({ ApiAuthRegisterPostRequest apiAuthRegisterPostRequest }) async
    test('test apiAuthRegisterPost', () async {
      // TODO
    });

    // 微信小程序绑定（用 bindToken + 账号密码绑定到儿童账号）
    //
    // 当 /login 返回 bindRequired=true 时，用 bindToken + 系统账号密码完成绑定。  当前版本为 MVP 规则：仅允许绑定到 CHILD（儿童）账号。绑定成功后会返回 JWT（等同一次登录）。
    //
    //Future<ApiAuthLoginPost200Response> apiAuthWechatMiniProgramBindPost({ ApiAuthWechatMiniProgramBindPostRequest apiAuthWechatMiniProgramBindPostRequest }) async
    test('test apiAuthWechatMiniProgramBindPost', () async {
      // TODO
    });

    // 微信小程序登录（code 换 openid；已绑定则直接返回 JWT）
    //
    // 小程序端调用 wx.login() 获取 code 后调用此接口。  - 若 openid 已绑定：返回 { bindRequired: false, token, user } - 若 openid 未绑定：返回 { bindRequired: true, bindToken }（短期有效，用于后续绑定）  注意：需在后端配置 WECHAT_MP_APP_ID / WECHAT_MP_APP_SECRET 才会真实请求微信 jscode2session。
    //
    //Future<ApiAuthWechatMiniProgramLoginPost200Response> apiAuthWechatMiniProgramLoginPost({ ApiAuthWechatMiniProgramLoginPostRequest apiAuthWechatMiniProgramLoginPostRequest }) async
    test('test apiAuthWechatMiniProgramLoginPost', () async {
      // TODO
    });

  });
}
