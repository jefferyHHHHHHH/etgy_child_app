import 'package:dio/dio.dart';
import 'package:etgy_openapi_client/etgy_openapi_client.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../features/auth/auth_controller.dart';
import '../providers/app_providers.dart';
import 'auth_interceptor.dart';
import 'debug_network_interceptor.dart';

final generatedOpenapiClientProvider = Provider<EtgyOpenapiClient>((Ref ref) {
  final config = ref.watch(appConfigProvider);

  final client = EtgyOpenapiClient(basePathOverride: config.apiBaseUrl);

  // IMPORTANT: Don't depend on authControllerProvider here.
  // This provider is used by authRepository/authRemoteDataSource, and authController
  // itself depends on authRepository. Watching authController here creates a circular
  // dependency that crashes sign-in with CircularDependencyError.
  client.dio.interceptors.add(
    AuthInterceptor(tokenReader: () => ref.read(authControllerProvider).token),
  );

  client.dio.interceptors.add(
    InterceptorsWrapper(
      onError: (DioException error, ErrorInterceptorHandler handler) {
        if (error.response?.statusCode == 401) {
          ref.read(authControllerProvider.notifier).signOut();
        }
        handler.next(error);
      },
    ),
  );

  if (kDebugMode) {
    // Android Studio App Inspection usually can't capture Dart network calls.
    // This makes requests visible in Logcat/terminal logs (with redaction).
    client.dio.interceptors.add(DebugNetworkInterceptor());
  }

  return client;
});
