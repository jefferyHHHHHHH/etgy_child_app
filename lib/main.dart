import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:video_player_media_kit/video_player_media_kit.dart';

import 'app/app.dart';
import 'core/errors/app_error_reporter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupGlobalErrorHandling();

  // `video_player` has no official Windows implementation.
  // This registers a media_kit-based backend on Windows to avoid
  // `UnimplementedError: init() has not been implemented`.
  VideoPlayerMediaKit.ensureInitialized(windows: true);

  if (kIsWeb) {
    GoogleFonts.config.allowRuntimeFetching = false;
  }

  runApp(const ProviderScope(child: EtgyChildApp()));
}
