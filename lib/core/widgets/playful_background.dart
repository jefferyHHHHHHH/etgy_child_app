import 'package:flutter/material.dart';

class PlayfulBackground extends StatelessWidget {
  const PlayfulBackground({required this.child, super.key});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Theme.of(context).scaffoldBackgroundColor,
      child: SafeArea(child: child),
    );
  }
}
