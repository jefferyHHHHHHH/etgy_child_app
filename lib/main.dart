import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app/app.dart';
import 'core/errors/app_error_reporter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupGlobalErrorHandling();

  if (kIsWeb) {
    GoogleFonts.config.allowRuntimeFetching = false;
  }

  runApp(const ProviderScope(child: EtgyChildApp()));
}
