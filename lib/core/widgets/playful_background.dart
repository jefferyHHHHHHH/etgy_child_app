import 'package:flutter/material.dart';

import '../theme/app_theme.dart';

class PlayfulBackground extends StatelessWidget {
  const PlayfulBackground({required this.child, super.key});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
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
        Positioned(
          top: -48,
          right: -38,
          child: _bubble(AppTheme.banana.withValues(alpha: 0.35), 146),
        ),
        Positioned(
          top: 128,
          left: -26,
          child: _bubble(AppTheme.coral.withValues(alpha: 0.24), 108),
        ),
        Positioned(
          bottom: -56,
          right: 20,
          child: _bubble(AppTheme.skyBlue.withValues(alpha: 0.24), 170),
        ),
        SafeArea(child: child),
      ],
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
