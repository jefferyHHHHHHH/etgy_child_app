import 'package:flutter/material.dart';

class AuthLaunchPage extends StatelessWidget {
  const AuthLaunchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}