import 'package:etgy_openapi_client/etgy_openapi_client.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../features/auth/auth_controller.dart';
import '../providers/app_providers.dart';

final generatedOpenapiClientProvider = Provider<EtgyOpenapiClient>((Ref ref) {
  final config = ref.watch(appConfigProvider);
  final token = ref.watch(authControllerProvider.select((state) => state.token));

  final client = EtgyOpenapiClient(basePathOverride: config.apiBaseUrl);
  if (token != null && token.isNotEmpty) {
    client.setBearerAuth('bearerAuth', token);
  }

  return client;
});
