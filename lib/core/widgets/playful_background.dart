import 'dart:math' as math;

import 'package:flutter/material.dart';

import '../theme/app_theme.dart';

class PlayfulBackground extends StatefulWidget {
  const PlayfulBackground({required this.child, super.key});

  final Widget child;

  @override
  State<PlayfulBackground> createState() => _PlayfulBackgroundState();
}

class _PlayfulBackgroundState extends State<PlayfulBackground>
    with SingleTickerProviderStateMixin {
  static bool get _shouldAnimate {
    if (const bool.fromEnvironment('FLUTTER_TEST')) return false;
    final bindingName = WidgetsBinding.instance.runtimeType.toString();
    if (bindingName.toLowerCase().contains('test')) return false;
    return true;
  }

  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 10),
    );

    if (_shouldAnimate) {
      _controller.repeat();
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, _) {
        final phase = _controller.value * 2 * math.pi;

        Offset drift(double dx, double dy, double speed) {
          final t = phase * speed;
          return Offset(math.sin(t) * dx, math.cos(t) * dy);
        }

        return Stack(
          children: [
            Positioned.fill(
              child: RepaintBoundary(
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        AppTheme.skyBlue.withValues(alpha: 0.18),
                        AppTheme.mint.withValues(alpha: 0.18),
                        Colors.white,
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: -48,
              right: -38,
              child: Transform.translate(
                offset: drift(10, 14, 0.8),
                child: _bubble(AppTheme.banana.withValues(alpha: 0.35), 146),
              ),
            ),
            Positioned(
              top: 128,
              left: -26,
              child: Transform.translate(
                offset: drift(12, 10, 1.1),
                child: _bubble(AppTheme.coral.withValues(alpha: 0.24), 108),
              ),
            ),
            Positioned(
              bottom: -56,
              right: 20,
              child: Transform.translate(
                offset: drift(14, 12, 0.9),
                child: _bubble(AppTheme.skyBlue.withValues(alpha: 0.24), 170),
              ),
            ),
            SafeArea(child: widget.child),
          ],
        );
      },
    );
  }

  Widget _bubble(Color color, double size) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(color: color, shape: BoxShape.circle),
    );
  }
}
