# ETGY Child App

儿童端 Flutter 应用（第一阶段骨架）。

## 1. 环境运行

开发环境启动：

```powershell
flutter pub get
flutter run --dart-define-from-file=env/dev.json
```

生产配置启动：

```powershell
flutter run --dart-define-from-file=env/prod.json
```

## 2. 代码质量

```powershell
flutter analyze
flutter test
```

## 3. 环境变量说明

配置文件路径：

- `env/dev.json`
- `env/prod.json`

核心变量：

- `APP_ENV`: `dev` / `prod`
- `API_BASE_URL`: 后端 API 根地址
- `AGORA_APP_ID`: Agora AppId
- `ENABLE_NETWORK_LOG`: 是否开启网络日志
- `ENABLE_MOCK_AUTH`: 是否使用本地鉴权模拟（true=模拟，false=真实接口）

## 4. OpenAPI 客户端生成

先安装生成器：

```powershell
npm i -g @openapitools/openapi-generator-cli
```

将后端 OpenAPI 文档放在：

- `openapi/openapi.yaml`

也可以直接从后端 Swagger URL 拉取：

```powershell
powershell -ExecutionPolicy Bypass -File .\scripts\pull_openapi.ps1 -InputSpecUrl "http://8.148.215.20/api/docs.json"
```

执行生成：

```powershell
powershell -ExecutionPolicy Bypass -File .\scripts\generate_openapi.ps1
```

或一步完成“拉取 + 生成”：

```powershell
powershell -ExecutionPolicy Bypass -File .\scripts\generate_openapi.ps1 -InputSpecUrl "http://8.148.215.20/api/docs.json"
```

生成后（首次或 Swagger 变更后）执行：

```powershell
powershell -ExecutionPolicy Bypass -File .\scripts\build_openapi_client.ps1
```

说明：生成器使用 json_serializable，需要 build_runner 生成 *.g.dart。

生成代码目录：

- `generated/openapi`

注意：`generated/openapi` 下代码不手改，每次以后端文档为准重新生成。

## 5. 第一阶段已完成基础

- 声明式路由（go_router）
- 全局状态（Riverpod）
- AppConfig 环境分离（dev/prod）
- Dio 网络层 + JWT 注入拦截器
- 统一异常映射（AppException）
- 全局异常捕获（FlutterError + Zone）

## 6. 第二阶段已完成能力

- 会话持久化（JWT + 用户信息 + 绑定状态）
- 冷启动恢复会话（launch 路由防跳转闪烁）
- AuthRepository + RemoteDataSource 分层
- 登录失败 3 次自动锁定 15 分钟
- 设置页支持真实退出登录

本地联调（ENABLE_MOCK_AUTH=true）默认测试账号：

- 账号：任意
- 密码：123456
