import 'package:etgy_openapi_client/etgy_openapi_client.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/app_providers.dart';

final generatedOpenapiClientProvider = Provider<EtgyOpenapiClient>((Ref ref) {
  final config = ref.watch(appConfigProvider);
  return EtgyOpenapiClient(basePathOverride: config.apiBaseUrl);
});
