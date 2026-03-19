import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../config/app_config.dart';

final appConfigProvider = Provider<AppConfig>((Ref ref) {
  return AppConfig.fromEnvironment();
});
