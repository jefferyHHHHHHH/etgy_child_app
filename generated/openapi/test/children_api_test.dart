import 'package:test/test.dart';
import 'package:etgy_openapi_client/etgy_openapi_client.dart';


/// tests for ChildrenApi
void main() {
  final instance = EtgyOpenapiClient().getChildrenApi();

  group(ChildrenApi, () {
    // 查看儿童账号密码（平台管理员）
    //
    //Future<ApiAuthRegisterPost201Response> apiChildrenIdPasswordGet(String id) async
    test('test apiChildrenIdPasswordGet', () async {
      // TODO
    });

    // 修改儿童账号密码（平台管理员）
    //
    //Future<ApiAuthRegisterPost201Response> apiChildrenIdPasswordPost(String id, { ApiUsersVolunteersIdPasswordPostRequest apiUsersVolunteersIdPasswordPostRequest }) async
    test('test apiChildrenIdPasswordPost', () async {
      // TODO
    });

  });
}
