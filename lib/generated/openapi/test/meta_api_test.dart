import 'package:test/test.dart';
import 'package:etgy_openapi_client/etgy_openapi_client.dart';


/// tests for MetaApi
void main() {
  final instance = EtgyOpenapiClient().getMetaApi();

  group(MetaApi, () {
    // 获取字典/枚举（前端下拉选项）
    //
    //Future<ApiMetaDictionariesGet200Response> apiMetaDictionariesGet() async
    test('test apiMetaDictionariesGet', () async {
      // TODO
    });

  });
}
