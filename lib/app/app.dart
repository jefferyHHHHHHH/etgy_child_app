import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../core/providers/app_providers.dart';
import 'router.dart';

class EtgyChildApp extends ConsumerWidget {
  const EtgyChildApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(goRouterProvider);
    final config = ref.watch(appConfigProvider);
    final title = config.isProd ? '益路同行' : '益路同行 (${config.flavor.name})';

    return MaterialApp.router(title: title, routerConfig: router);
  }
}
