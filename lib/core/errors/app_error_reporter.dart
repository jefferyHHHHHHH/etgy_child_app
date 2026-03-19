import 'dart:async';

import 'package:flutter/foundation.dart';

void setupGlobalErrorHandling() {
  FlutterError.onError = (FlutterErrorDetails details) {
    FlutterError.presentError(details);
    debugPrint('FlutterError: ${details.exceptionAsString()}');
  };

  PlatformDispatcher.instance.onError = (Object error, StackTrace stack) {
    debugPrint('PlatformError: $error');
    return true;
  };
}

Future<void> runWithErrorGuard(FutureOr<void> Function() body) async {
  await runZonedGuarded(
    () async {
      await body();
    },
    (Object error, StackTrace stackTrace) {
      debugPrint('UncaughtError: $error');
    },
  );
}
