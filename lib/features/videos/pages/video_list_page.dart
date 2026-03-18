import 'package:flutter/material.dart';

class VideoListPage extends StatelessWidget {
  const VideoListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('视频列表')),
      body: const Center(child: Text('视频列表页（占位）')),
    );
  }
}
