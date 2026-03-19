import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../app/router.dart';
import '../auth_controller.dart';

class AuthLaunchPage extends ConsumerStatefulWidget {
  const AuthLaunchPage({super.key});

  @override
  ConsumerState<AuthLaunchPage> createState() => _AuthLaunchPageState();
}

class _AuthLaunchPageState extends ConsumerState<AuthLaunchPage> {
  late final DateTime _startedAt;
  Timer? _ticker;

  @override
  void initState() {
    super.initState();
    _startedAt = DateTime.now();

    if (kDebugMode) {
      _ticker = Timer.periodic(const Duration(seconds: 1), (_) {
        if (!mounted) return;
        setState(() {});
      });
    }
  }

  @override
  void dispose() {
    _ticker?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final authState = ref.watch(authControllerProvider);

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const CircularProgressIndicator(),
            if (kDebugMode) ...[
              const SizedBox(height: 16),
              Text(
                'launch elapsed: ${DateTime.now().difference(_startedAt).inSeconds}s',
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 6),
              Text(
                'isHydrating=${authState.isHydrating} '
                'isLoggedIn=${authState.isLoggedIn} '
                'isDeviceBound=${authState.isDeviceBound}',
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 6),
              Text(
                'error=${authState.errorMessage ?? '-'}',
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 12),
              TextButton(
                onPressed: () {
                  ref.read(authControllerProvider.notifier).forceStopHydration(
                        message: '手动跳过启动恢复（debug）',
                      );
                  context.go(AppRoutes.login);
                },
                child: const Text('Go to login (debug)'),
              ),
            ],
          ],
        ),
      ),
    );
  }
}