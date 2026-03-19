import 'package:test/test.dart';
import 'package:etgy_openapi_client/etgy_openapi_client.dart';


/// tests for OSSApi
void main() {
  final instance = EtgyOpenapiClient().getOSSApi();

  group(OSSApi, () {
    // 后端代传上传文件到 OSS（multipart）
    //
    //Future<ApiAuthRegisterPost201Response> apiOssUploadFolderPost(String folder, MultipartFile file) async
    test('test apiOssUploadFolderPost', () async {
      // TODO
    });

    // 获取直传上传 URL（S3 预签名 PUT）
    //
    //Future<ApiAuthRegisterPost201Response> apiOssUploadUrlPost({ ApiOssUploadUrlPostRequest apiOssUploadUrlPostRequest }) async
    test('test apiOssUploadUrlPost', () async {
      // TODO
    });

    // 获取私有对象临时访问 URL（S3 预签名 GET）
    //
    //Future<ApiAuthRegisterPost201Response> apiOssUrlGet(String keyOrUrl, { int expiresInSeconds }) async
    test('test apiOssUrlGet', () async {
      // TODO
    });

  });
}
