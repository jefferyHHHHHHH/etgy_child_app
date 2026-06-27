import 'package:flutter/material.dart';

class AiBuddyAssets {
  static const logo = 'assets/images/ai_buddy_logo.png';
}

class AiBuddyAvatar extends StatelessWidget {
  const AiBuddyAvatar({
    this.size = 48,
    super.key,
  });

  final double size;

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Image.asset(
        AiBuddyAssets.logo,
        width: size,
        height: size,
        fit: BoxFit.cover,
        errorBuilder: (_, __, ___) => Icon(
          Icons.face_rounded,
          size: size * 0.6,
        ),
      ),
    );
  }
}
