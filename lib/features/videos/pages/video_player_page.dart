import 'package:etgy_openapi_client/etgy_openapi_client.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerPage extends StatefulWidget {
  const VideoPlayerPage({super.key, this.video});

  final Video? video;

  @override
  State<VideoPlayerPage> createState() => _VideoPlayerPageState();
}

class _VideoPlayerPageState extends State<VideoPlayerPage> {
  VideoPlayerController? _controller;
  Future<void>? _initializeFuture;
  String? _errorMessage;

  @override
  void initState() {
    super.initState();

    final url = widget.video?.url;
    if (url == null || url.trim().isEmpty) {
      _errorMessage = '未获取到视频地址';
      return;
    }

    final uri = Uri.tryParse(url);
    if (uri == null || (!uri.isScheme('http') && !uri.isScheme('https'))) {
      _errorMessage = '视频地址格式不正确：$url';
      return;
    }

    final controller = VideoPlayerController.networkUrl(uri);
    _controller = controller;
    _initializeFuture = controller.initialize().then((_) {
      if (!mounted) return;
      setState(() {});
    }).catchError((Object e) {
      if (!mounted) return;
      setState(() {
        _errorMessage = e.toString();
      });
    });
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final controller = _controller;
    final title = widget.video?.title ?? '视频播放';

    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: _errorMessage != null
            ? Center(
                child: Text(
                  '播放失败：${_errorMessage!}',
                  textAlign: TextAlign.center,
                ),
              )
            : controller == null || _initializeFuture == null
                ? const Center(child: CircularProgressIndicator())
                : Column(
                    children: [
                      Expanded(
                        child: Center(
                          child: FutureBuilder<void>(
                            future: _initializeFuture,
                            builder: (context, snapshot) {
                              if (snapshot.connectionState != ConnectionState.done) {
                                return const CircularProgressIndicator();
                              }
                              if (snapshot.hasError) {
                                return Text(
                                  '播放失败：${snapshot.error}',
                                  textAlign: TextAlign.center,
                                );
                              }

                              final isReady = controller.value.isInitialized;
                              if (!isReady) {
                                return const Text('视频初始化中...');
                              }

                              return AspectRatio(
                                aspectRatio: controller.value.aspectRatio == 0
                                    ? 16 / 9
                                    : controller.value.aspectRatio,
                                child: VideoPlayer(controller),
                              );
                            },
                          ),
                        ),
                      ),
                      const SizedBox(height: 12),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            iconSize: 44,
                            onPressed: () {
                              if (!controller.value.isInitialized) return;
                              setState(() {
                                if (controller.value.isPlaying) {
                                  controller.pause();
                                } else {
                                  controller.play();
                                }
                              });
                            },
                            icon: Icon(
                              controller.value.isPlaying
                                  ? Icons.pause_circle_filled
                                  : Icons.play_circle_filled,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
      ),
    );
  }
}
