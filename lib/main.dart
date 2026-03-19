import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'app/app.dart';
import 'core/errors/app_error_reporter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupGlobalErrorHandling();

  await runWithErrorGuard(() async {
    runApp(const ProviderScope(child: EtgyChildApp()));
  });
}
