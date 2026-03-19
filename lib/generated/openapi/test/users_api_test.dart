import 'package:test/test.dart';
import 'package:etgy_openapi_client/etgy_openapi_client.dart';


/// tests for UsersApi
void main() {
  final instance = EtgyOpenapiClient().getUsersApi();

  group(UsersApi, () {
    // 批量导入儿童账号（Excel .xlsx）
    //
    //Future<ApiUsersVolunteersBatchExcelPost201Response> apiUsersChildrenBatchExcelPost(MultipartFile file) async
    test('test apiUsersChildrenBatchExcelPost', () async {
      // TODO
    });

    // 下载儿童批量导入 Excel 模板（.xlsx）
    //
    //Future<Uint8List> apiUsersChildrenBatchExcelTemplateGet() async
    test('test apiUsersChildrenBatchExcelTemplateGet', () async {
      // TODO
    });

    // 批量创建儿童账号（平台管理员建档）
    //
    //Future<ApiAuthRegisterPost201Response> apiUsersChildrenBatchPost({ ApiUsersChildrenBatchPostRequest apiUsersChildrenBatchPostRequest }) async
    test('test apiUsersChildrenBatchPost', () async {
      // TODO
    });

    // 获取儿童账号列表（平台管理员）
    //
    //Future<ApiAuthRegisterPost201Response> apiUsersChildrenGet({ String search, String school, String grade, int page, int pageSize }) async
    test('test apiUsersChildrenGet', () async {
      // TODO
    });

    // 重置儿童账号密码（平台管理员）
    //
    //Future<ApiAuthRegisterPost201Response> apiUsersChildrenIdResetPasswordPost(String id) async
    test('test apiUsersChildrenIdResetPasswordPost', () async {
      // TODO
    });

    // 更新儿童账号状态（平台管理员）
    //
    //Future<ApiAuthRegisterPost201Response> apiUsersChildrenIdStatusPatch(String id, { ApiUsersChildrenIdStatusPatchRequest apiUsersChildrenIdStatusPatchRequest }) async
    test('test apiUsersChildrenIdStatusPatch', () async {
      // TODO
    });

    // 创建儿童账号（平台管理员建档）
    //
    //Future<ApiAuthRegisterPost201Response> apiUsersChildrenPost({ ApiUsersChildrenPostRequest apiUsersChildrenPostRequest }) async
    test('test apiUsersChildrenPost', () async {
      // TODO
    });

    // 获取我的用户信息
    //
    //Future<ApiAuthRegisterPost201Response> apiUsersMeGet() async
    test('test apiUsersMeGet', () async {
      // TODO
    });

    // 修改我的密码
    //
    //Future<ApiAuthRegisterPost201Response> apiUsersMePasswordPatch({ ApiUsersMePasswordPatchRequest apiUsersMePasswordPatchRequest }) async
    test('test apiUsersMePasswordPatch', () async {
      // TODO
    });

    // 创建志愿者账号（学院管理员/平台管理员）
    //
    //Future<ApiAuthRegisterPost201Response> apiUsersVolunteersAccountsPost({ ApiUsersVolunteersAccountsPostRequest apiUsersVolunteersAccountsPostRequest }) async
    test('test apiUsersVolunteersAccountsPost', () async {
      // TODO
    });

    // 批量导入志愿者账号（Excel .xlsx，学院管理员）
    //
    //Future<ApiUsersVolunteersBatchExcelPost201Response> apiUsersVolunteersBatchExcelPost(MultipartFile file, { int collegeId }) async
    test('test apiUsersVolunteersBatchExcelPost', () async {
      // TODO
    });

    // 下载志愿者批量导入 Excel 模板（.xlsx）
    //
    //Future<Uint8List> apiUsersVolunteersBatchExcelTemplateGet() async
    test('test apiUsersVolunteersBatchExcelTemplateGet', () async {
      // TODO
    });

    // 获取志愿者列表（管理员）
    //
    //Future<ApiAuthRegisterPost201Response> apiUsersVolunteersGet({ int collegeId, String status, String userStatus, String search, int page, int pageSize }) async
    test('test apiUsersVolunteersGet', () async {
      // TODO
    });

    // 更新志愿者状态（管理员）
    //
    //Future<ApiAuthRegisterPost201Response> apiUsersVolunteersIdStatusPatch(String id, { ApiUsersVolunteersIdStatusPatchRequest apiUsersVolunteersIdStatusPatchRequest }) async
    test('test apiUsersVolunteersIdStatusPatch', () async {
      // TODO
    });

    // 停用/启用志愿者账号（管理员）
    //
    //Future<ApiAuthRegisterPost201Response> apiUsersVolunteersIdSuspendPatch(String id, { ApiUsersVolunteersIdSuspendPatchRequest apiUsersVolunteersIdSuspendPatchRequest }) async
    test('test apiUsersVolunteersIdSuspendPatch', () async {
      // TODO
    });

  });
}
