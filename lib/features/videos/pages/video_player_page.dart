import 'dart:async';
import 'dart:io';
import 'dart:typed_data';

import 'package:etgy_openapi_client/etgy_openapi_client.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:video_player/video_player.dart';

import '../../../core/errors/app_exception_mapper.dart';
import '../../../core/theme/app_theme.dart';
import '../../../core/utils/comment_author_display.dart';
import '../../../core/utils/comment_content_validator.dart';
import '../../../core/widgets/playful_background.dart';
import '../../auth/auth_controller.dart';
import '../data/video_repository.dart';
import '../my_comments_store.dart';
import '../video_comments_controller.dart';
import '../video_engagement_controller.dart';

class VideoPlayerPage extends ConsumerStatefulWidget {
  const VideoPlayerPage({super.key, this.video});

  final Video? video;

  @override
  ConsumerState<VideoPlayerPage> createState() => _VideoPlayerPageState();
}

class _VideoPlayerPageState extends ConsumerState<VideoPlayerPage> {
  VideoPlayerController? _controller;
  Future<void>? _initializeFuture;
  String? _errorMessage;

  double _speed = 1.0;
  Timer? _watchTimer;
  DateTime? _lastWatchReportAt;
  bool _playCountSynced = false;
  final _commentController = TextEditingController();

  @override
  void initState() {
    super.initState();
    unawaited(_prepareAndInitPlayer());
  }

  Future<void> _prepareAndInitPlayer() async {
    final video = widget.video;
    if (video == null) {
      setState(() {
        _errorMessage = '未获取到视频信息';
      });
      return;
    }

    try {
      final resolvedUrl = await _resolvePlayableUrl(video);
      if (resolvedUrl == null || resolvedUrl.trim().isEmpty) {
        setState(() {
          _errorMessage = '视频地址已过期或获取失败，请稍后重试';
        });
        return;
      }

      final uri = _tryParseHttpUrl(resolvedUrl);
      if (uri == null) {
        setState(() {
          _errorMessage = '视频地址格式不正确';
        });
        return;
      }

      await _initPlayerWithUrl(uri);
    } catch (e) {
      if (!mounted) return;
      setState(() {
        _errorMessage = _formatPlaybackError(e);
      });
    }
  }

  Future<void> _initPlayerWithUrl(Uri uri) async {
    final token = ref.read(authControllerProvider).token?.trim();
    final isPresigned = _isPresignedS3Url(uri);
    final headers = <String, String>{
      // Some servers/CDNs reject ExoPlayer's default UA; a browser-like UA improves compatibility.
      'User-Agent':
          'Mozilla/5.0 (Android) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Mobile Safari/537.36',
      // For S3-style presigned URLs, adding an Authorization header can cause 403 on some providers.
      if (!isPresigned && token != null && token.isNotEmpty)
        'Authorization': 'Bearer $token',
    };

    // Best-effort: print response headers/status to diagnose ExoPlayer "Source error".
    unawaited(_probeVideoUrl(uri, headers));

    final controller = VideoPlayerController.networkUrl(
      uri,
      httpHeaders: headers,
    );
    _controller = controller;
    _initializeFuture = controller
        .initialize()
        .then((_) async {
          if (!mounted) return;
          await controller.setPlaybackSpeed(_speed);
          _startWatchReporting();
          setState(() {});
        })
        .catchError((Object e) {
          if (!mounted) return;
          setState(() {
            _errorMessage = _formatPlaybackError(e);
          });
        });
    if (mounted) setState(() {});
  }

  void _retryPlayer() {
    _watchTimer?.cancel();
    _controller?.dispose();
    _controller = null;
    _initializeFuture = null;
    _errorMessage = null;
    _playCountSynced = false;
    setState(() {});
    unawaited(_prepareAndInitPlayer());
  }

  Future<String?> _resolvePlayableUrl(Video video) async {
    final rawUrl = video.url.trim();

    // 列表接口返回的预签名 URL 有效期较短，播放时必须向服务端重新获取。
    final presigned = await _fetchPresignedUrl(
      video.id,
      const Duration(seconds: 12),
    );
    if (presigned != null && presigned.trim().isNotEmpty) {
      return presigned.trim();
    }

    if (rawUrl.isEmpty) {
      return null;
    }

    final directUri = _tryParseHttpUrl(rawUrl);
    if (directUri != null &&
        _isPresignedS3Url(directUri) &&
        _isPresignedUrlExpired(directUri)) {
      return null;
    }

    return rawUrl;
  }

  Future<String?> _fetchPresignedUrl(int videoId, Duration timeout) async {
    try {
      return await ref
          .read(videoRepositoryProvider)
          .fetchVideoMediaUrl(videoId: videoId)
          .timeout(timeout);
    } catch (_) {
      return null;
    }
  }

  static String _formatPlaybackError(Object error) {
    return AppExceptionMapper.from(error).message;
  }

  Uri? _tryParseHttpUrl(String raw) {
    final trimmed = raw.trim();
    if (trimmed.isEmpty) return null;
    final uri = Uri.tryParse(trimmed) ?? Uri.tryParse(Uri.encodeFull(trimmed));
    if (uri == null) return null;
    if (uri.isScheme('http') || uri.isScheme('https')) {
      return uri;
    }
    return null;
  }

  Future<void> _probeVideoUrl(Uri uri, Map<String, String> headers) async {
    if (!kDebugMode) return;

    final client = HttpClient();
    try {
      final request = await client.getUrl(uri);
      request.followRedirects = true;
      request.maxRedirects = 5;
      headers.forEach(request.headers.set);
      request.headers.set(HttpHeaders.rangeHeader, 'bytes=0-1');

      final response = await request.close();
      final contentType = response.headers.contentType?.mimeType;
      final acceptRanges = response.headers.value('accept-ranges');
      final contentRange = response.headers.value('content-range');
      final server = response.headers.value('server');

      debugPrint(
        '[VideoProbe] uri=$uri status=${response.statusCode} '
        'contentType=$contentType contentLength=${response.contentLength} '
        'acceptRanges=$acceptRanges contentRange=$contentRange server=$server '
        'redirects=${response.redirects.length}',
      );
      for (final r in response.redirects) {
        debugPrint('[VideoProbe] redirect: ${r.statusCode} ${r.location}');
      }

      // Read a short snippet for error diagnosis (e.g. <Code>AccessDenied</Code>, <Code>ExpiredToken</Code>).
      final snippet = await _readResponseSnippet(response, maxBytes: 512);
      if (response.statusCode >= 400 && snippet.isNotEmpty) {
        debugPrint('[VideoProbe] bodySnippet=${snippet.replaceAll('\n', ' ')}');
      }
    } catch (e) {
      debugPrint('[VideoProbe] failed: $e');
    } finally {
      client.close(force: true);
    }
  }

  static bool _isPresignedS3Url(Uri uri) {
    final qp = uri.queryParameters;
    return qp.containsKey('X-Amz-Signature') ||
        qp.containsKey('X-Amz-Credential') ||
        qp.containsKey('X-Amz-Algorithm');
  }

  static bool _isPresignedUrlExpired(Uri uri) {
    final qp = uri.queryParameters;
    final dateStr = qp['X-Amz-Date'];
    final expiresStr = qp['X-Amz-Expires'];
    if (dateStr == null || expiresStr == null) {
      return false;
    }

    try {
      final issuedAt = DateTime.parse(
        '${dateStr.substring(0, 8)}T'
        '${dateStr.substring(9, 15)}Z',
      );
      final expiresSec = int.parse(expiresStr);
      return DateTime.now().toUtc().isAfter(
        issuedAt.add(Duration(seconds: expiresSec)),
      );
    } catch (_) {
      return false;
    }
  }

  static Future<String> _readResponseSnippet(
    HttpClientResponse response, {
    required int maxBytes,
  }) async {
    final builder = BytesBuilder(copy: false);
    var total = 0;

    await for (final chunk in response) {
      if (total >= maxBytes) {
        continue;
      }
      final remaining = maxBytes - total;
      if (chunk.length <= remaining) {
        builder.add(chunk);
        total += chunk.length;
      } else {
        builder.add(chunk.sublist(0, remaining));
        total += remaining;
      }
    }

    if (total == 0) return '';
    return String.fromCharCodes(builder.takeBytes());
  }

  void _startWatchReporting() {
    _watchTimer?.cancel();
    _lastWatchReportAt = DateTime.now();
    _watchTimer = Timer.periodic(const Duration(seconds: 15), (_) {
      _reportWatchDelta();
    });
  }

  Future<void> _reportWatchDelta() async {
    final video = widget.video;
    final controller = _controller;
    if (video == null || controller == null) return;
    if (!controller.value.isInitialized) return;
    if (!controller.value.isPlaying) return;

    final now = DateTime.now();
    final lastAt = _lastWatchReportAt;
    _lastWatchReportAt = now;
    if (lastAt == null) return;

    final watchedSeconds = now.difference(lastAt).inSeconds;
    if (watchedSeconds <= 0) return;

    final positionSec = controller.value.position.inSeconds;
    final durationSec = controller.value.duration.inSeconds;
    final completed = durationSec > 0 && positionSec >= durationSec - 2;

    try {
      await ref
          .read(videoRepositoryProvider)
          .reportWatch(
            videoId: video.id,
            lastPositionSec: positionSec,
            watchedSeconds: watchedSeconds,
            completed: completed,
          );

      if (!_playCountSynced) {
        _playCountSynced = true;
        final args = VideoEngagementArgs.fromVideo(video);
        await ref
            .read(videoEngagementControllerProvider(args).notifier)
            .refreshPlayCountFromServer();
      }
    } catch (_) {
      // Best-effort. Ignore reporting failures.
    }
  }

  @override
  void dispose() {
    _watchTimer?.cancel();
    _commentController.dispose();
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final controller = _controller;
    final video = widget.video;
    final title = video?.title ?? '视频播放';
    final bottomInset = MediaQuery.viewInsetsOf(context).bottom;

    if (video == null) {
      return Scaffold(
        appBar: AppBar(title: Text(title)),
        body: PlayfulBackground(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                _errorMessage ?? '未获取到视频信息',
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(title: Text(title)),
      resizeToAvoidBottomInset: true,
      body: PlayfulBackground(
        child: ListView(
          padding: const EdgeInsets.fromLTRB(16, 12, 16, 120),
          children: [
            _buildPlayerArea(context, controller),
            const SizedBox(height: 10),
            _EngagementBar(video: video),
            const SizedBox(height: 12),
            _CommentsSection(videoId: video.id),
          ],
        ),
      ),
      bottomNavigationBar: AnimatedPadding(
              duration: const Duration(milliseconds: 160),
              curve: Curves.easeOut,
              padding: EdgeInsets.only(bottom: bottomInset),
              child: SafeArea(
                top: false,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(16, 0, 16, 12),
                  child: _CommentComposer(
                    controller: _commentController,
                    onSend: () async {
                      final text = _commentController.text.trim();
                      final validation = CommentContentValidator.validate(text);
                      if (!validation.isValid) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text(validation.message!)),
                        );
                        return;
                      }

                      try {
                        final comment = await ref
                            .read(
                              videoCommentsControllerProvider(
                                video.id,
                              ).notifier,
                            )
                            .post(text);
                        _commentController.clear();
                        if (!context.mounted) return;

                        final message = switch (comment.status) {
                          VideoCommentStatusEnum.APPROVED => '评论已发布 ✓',
                          VideoCommentStatusEnum.REJECTED =>
                            comment.rejectReason?.isNotEmpty == true
                                ? '评论未通过：${comment.rejectReason}'
                                : '评论未通过审核',
                          VideoCommentStatusEnum.PENDING => '评论已提交，正在审核中 ✓',
                        };
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(message),
                            duration: const Duration(seconds: 3),
                          ),
                        );
                      } catch (e) {
                        if (!context.mounted) return;
                        ScaffoldMessenger.of(
                          context,
                        ).showSnackBar(SnackBar(content: Text(e.toString())));
                      }
                    },
                  ),
                ),
              ),
            ),
    );
  }

  Widget _buildPlayerArea(BuildContext context, VideoPlayerController? controller) {
    final errorMessage = _errorMessage;
    if (errorMessage != null) {
      return _PlayerPlaceholderCard(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              '播放失败：$errorMessage',
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 12),
            FilledButton.icon(
              onPressed: _retryPlayer,
              icon: const Icon(Icons.refresh_rounded, size: 18),
              label: const Text('重试'),
            ),
          ],
        ),
      );
    }

    if (controller == null || _initializeFuture == null) {
      return const _PlayerPlaceholderCard(
        child: CircularProgressIndicator(),
      );
    }

    return _PlayerCard(
      controller: controller,
      initializeFuture: _initializeFuture!,
      speed: _speed,
      onSpeedChanged: (value) async {
        setState(() => _speed = value);
        if (!controller.value.isInitialized) return;
        await controller.setPlaybackSpeed(value);
      },
      onFullscreen: () => _openFullscreen(context),
    );
  }

  Future<void> _openFullscreen(BuildContext context) async {
    final controller = _controller;
    if (controller == null) return;
    if (!controller.value.isInitialized) return;

    final navigator = Navigator.of(context);

    try {
      await SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    } catch (_) {
      // Best-effort.
    }

    if (!mounted) return;

    try {
      await navigator.push(
        MaterialPageRoute<void>(
          builder: (_) => _FullscreenVideoPage(
            controller: controller,
            speed: _speed,
            onSpeedChanged: (value) async {
              if (!mounted) return;
              setState(() => _speed = value);
              if (!controller.value.isInitialized) return;
              await controller.setPlaybackSpeed(value);
            },
          ),
        ),
      );
    } finally {
      try {
        await SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
      } catch (_) {
        // Best-effort.
      }
    }
  }
}

class _PlayerPlaceholderCard extends StatelessWidget {
  const _PlayerPlaceholderCard({required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: AspectRatio(
        aspectRatio: 16 / 9,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: child,
          ),
        ),
      ),
    );
  }
}

class _PlayerCard extends StatelessWidget {
  const _PlayerCard({
    required this.controller,
    required this.initializeFuture,
    required this.speed,
    required this.onSpeedChanged,
    required this.onFullscreen,
  });

  final VideoPlayerController controller;
  final Future<void> initializeFuture;
  final double speed;
  final ValueChanged<double> onSpeedChanged;
  final VoidCallback onFullscreen;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: FutureBuilder<void>(
        future: initializeFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState != ConnectionState.done) {
            return const AspectRatio(
              aspectRatio: 16 / 9,
              child: Center(child: CircularProgressIndicator()),
            );
          }
          if (snapshot.hasError) {
            return AspectRatio(
              aspectRatio: 16 / 9,
              child: Center(
                child: Text(
                  '播放失败：${snapshot.error}',
                  textAlign: TextAlign.center,
                ),
              ),
            );
          }

          final aspect = controller.value.aspectRatio == 0
              ? 16 / 9
              : controller.value.aspectRatio;

          return AspectRatio(
            aspectRatio: aspect,
            child: ValueListenableBuilder<VideoPlayerValue>(
              valueListenable: controller,
              builder: (context, value, _) {
                final isReady = value.isInitialized;
                final isPlaying = value.isPlaying;
                final duration = value.duration;
                final position = value.position;

                return Stack(
                  fit: StackFit.expand,
                  children: [
                    GestureDetector(
                      onTap: !isReady
                          ? null
                          : () {
                              if (isPlaying) {
                                controller.pause();
                              } else {
                                controller.play();
                              }
                            },
                      child: VideoPlayer(controller),
                    ),
                    Positioned.fill(
                      child: IgnorePointer(
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Colors.black.withValues(alpha: 0.0),
                                Colors.black.withValues(alpha: 0.0),
                                Colors.black.withValues(alpha: 0.35),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: AnimatedOpacity(
                        duration: const Duration(milliseconds: 140),
                        opacity: isPlaying ? 0.0 : 1.0,
                        child: Material(
                          color: Colors.black.withValues(alpha: 0.28),
                          shape: const CircleBorder(),
                          child: InkWell(
                            customBorder: const CircleBorder(),
                            onTap: !isReady
                                ? null
                                : () {
                                    if (isPlaying) {
                                      controller.pause();
                                    } else {
                                      controller.play();
                                    }
                                  },
                            child: const Padding(
                              padding: EdgeInsets.all(12),
                              child: Icon(
                                Icons.play_arrow_rounded,
                                size: 44,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 10,
                      right: 10,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          PopupMenuButton<double>(
                            initialValue: speed,
                            onSelected: onSpeedChanged,
                            itemBuilder: (context) => const [
                              PopupMenuItem(value: 0.5, child: Text('0.5x')),
                              PopupMenuItem(value: 0.75, child: Text('0.75x')),
                              PopupMenuItem(value: 1.0, child: Text('1.0x')),
                              PopupMenuItem(value: 1.25, child: Text('1.25x')),
                              PopupMenuItem(value: 1.5, child: Text('1.5x')),
                              PopupMenuItem(value: 2.0, child: Text('2.0x')),
                            ],
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 10,
                                vertical: 6,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.black.withValues(alpha: 0.28),
                                borderRadius: BorderRadius.circular(999),
                              ),
                              child: Text(
                                '${speed.toStringAsFixed(speed == 1.0 ? 0 : 2)}x',
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 8),
                          Material(
                            color: Colors.black.withValues(alpha: 0.28),
                            shape: const CircleBorder(),
                            child: InkWell(
                              customBorder: const CircleBorder(),
                              onTap: onFullscreen,
                              child: const Padding(
                                padding: EdgeInsets.all(8),
                                child: Icon(
                                  Icons.fullscreen_rounded,
                                  size: 20,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      left: 10,
                      right: 10,
                      bottom: 10,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: VideoProgressIndicator(
                              controller,
                              allowScrubbing: true,
                              colors: VideoProgressColors(
                                playedColor: AppTheme.coral,
                                bufferedColor: Colors.white.withValues(
                                  alpha: 0.30,
                                ),
                                backgroundColor: Colors.white.withValues(
                                  alpha: 0.18,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 6),
                          Row(
                            children: [
                              Text(
                                _formatTime(position),
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              const Spacer(),
                              Text(
                                _formatTime(duration),
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
          );
        },
      ),
    );
  }
}

class _EngagementBar extends ConsumerWidget {
  const _EngagementBar({required this.video});

  final Video video;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final args = VideoEngagementArgs.fromVideo(video);
    final state = ref.watch(videoEngagementControllerProvider(args));
    final controller = ref.read(
      videoEngagementControllerProvider(args).notifier,
    );

    return Card(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(12, 10, 12, 10),
        child: Row(
          children: [
            Expanded(
              child: _ActionChip(
                active: state.liked,
                activeIcon: Icons.thumb_up_rounded,
                inactiveIcon: Icons.thumb_up_outlined,
                label: '点赞 ${state.likeCount}',
                busy: state.isLiking,
                onTap: () async {
                  try {
                    await controller.toggleLike();
                  } catch (_) {
                    if (!context.mounted) return;
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('点赞操作失败，请稍后重试')),
                    );
                  }
                },
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: _ActionChip(
                active: state.favorited,
                activeIcon: Icons.bookmark_rounded,
                inactiveIcon: Icons.bookmark_outline_rounded,
                label: '收藏 ${state.favCount}',
                busy: state.isFavoriting,
                onTap: () async {
                  try {
                    await controller.toggleFavorite();
                  } catch (_) {
                    if (!context.mounted) return;
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('收藏操作失败，请稍后重试')),
                    );
                  }
                },
              ),
            ),
            const SizedBox(width: 10),
            Text('播放 ${state.playCount}', style: theme.textTheme.bodyMedium),
          ],
        ),
      ),
    );
  }
}

class _ActionChip extends StatelessWidget {
  const _ActionChip({
    required this.active,
    required this.activeIcon,
    required this.inactiveIcon,
    required this.label,
    required this.busy,
    required this.onTap,
  });

  final bool active;
  final IconData activeIcon;
  final IconData inactiveIcon;
  final String label;
  final bool busy;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final iconColor = active
        ? AppTheme.ink
        : AppTheme.ink.withValues(alpha: 0.38);
    final textColor = active
        ? AppTheme.ink
        : AppTheme.ink.withValues(alpha: 0.60);

    return Material(
      color: Colors.white,
      borderRadius: BorderRadius.circular(999),
      child: InkWell(
        borderRadius: BorderRadius.circular(999),
        onTap: busy ? null : onTap,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(999),
            border: Border.all(color: AppTheme.ink.withValues(alpha: 0.10)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              busy
                  ? SizedBox(
                      width: 16,
                      height: 16,
                      child: CircularProgressIndicator(
                        strokeWidth: 2,
                        color: iconColor,
                      ),
                    )
                  : Icon(
                      active ? activeIcon : inactiveIcon,
                      size: 18,
                      color: iconColor,
                    ),
              const SizedBox(width: 6),
              Flexible(
                child: Text(
                  label,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: textColor,
                    fontWeight: active ? FontWeight.w600 : FontWeight.w400,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _CommentComposer extends StatefulWidget {
  const _CommentComposer({required this.controller, required this.onSend});

  final TextEditingController controller;
  final VoidCallback onSend;

  @override
  State<_CommentComposer> createState() => _CommentComposerState();
}

class _CommentComposerState extends State<_CommentComposer> {
  static const int _maxLength = 200;
  int _charCount = 0;

  @override
  void initState() {
    super.initState();
    widget.controller.addListener(_onTextChanged);
  }

  void _onTextChanged() {
    final len = widget.controller.text.length;
    if (len != _charCount) {
      setState(() => _charCount = len);
    }
  }

  @override
  void dispose() {
    widget.controller.removeListener(_onTextChanged);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final remaining = _maxLength - _charCount;
    final showCounter = _charCount >= 150;
    final isOverLimit = _charCount > _maxLength;

    return Card(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(12, 10, 12, 10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  child: TextField(
                    controller: widget.controller,
                    textInputAction: TextInputAction.send,
                    onSubmitted: (_) => widget.onSend(),
                    maxLength: _maxLength,
                    buildCounter: (_, {required currentLength, required isFocused, maxLength}) =>
                        const SizedBox.shrink(),
                    decoration: InputDecoration(
                      hintText: '说点什么吧…',
                      hintStyle: theme.textTheme.bodyMedium,
                    ),
                    minLines: 1,
                    maxLines: 3,
                  ),
                ),
                const SizedBox(width: 10),
                FilledButton(
                  onPressed: isOverLimit ? null : widget.onSend,
                  style: FilledButton.styleFrom(minimumSize: const Size(86, 44)),
                  child: const Text('发布'),
                ),
              ],
            ),
            if (showCounter)
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.only(top: 4, right: 4),
                  child: Text(
                    isOverLimit ? '超出 ${-remaining} 字' : '还可输入 $remaining 字',
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: isOverLimit ? AppTheme.coral : AppTheme.ink.withValues(alpha: 0.45),
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class _CommentsSection extends ConsumerWidget {
  const _CommentsSection({required this.videoId});

  final int videoId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final commentsAsync = ref.watch(videoCommentsControllerProvider(videoId));
    final myCommentsAll = ref.watch(myCommentsStoreProvider).comments;
    final myComments = myCommentsAll
        .where((c) => c.videoId == videoId)
        .where((c) => c.status != VideoCommentStatusEnum.APPROVED)
        .toList();

    return Card(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(14, 12, 14, 14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(child: Text('评论区', style: theme.textTheme.titleLarge)),
                TextButton.icon(
                  onPressed: () => ref
                      .read(videoCommentsControllerProvider(videoId).notifier)
                      .refresh(),
                  icon: const Icon(Icons.refresh_rounded, size: 18),
                  label: const Text('刷新'),
                ),
              ],
            ),
            // ── 用户自己的评论（含待审核 / 未通过）──────────────────
            if (myComments.isNotEmpty) ...[
              const SizedBox(height: 4),
              Text(
                '我的评论',
                style: theme.textTheme.labelLarge?.copyWith(
                  color: AppTheme.ink.withValues(alpha: 0.50),
                ),
              ),
              const SizedBox(height: 6),
              ...myComments.map(
                (c) => Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: _CommentTile(comment: c, showStatus: true),
                ),
              ),
              const Divider(height: 20),
            ],
            // ── 公开评论（只展示 APPROVED）──────────────────────────
            const SizedBox(height: 4),
            commentsAsync.when(
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (e, _) => Text(e.toString()),
              data: (items) {
                final approved = items
                    .where((c) => c.status == VideoCommentStatusEnum.APPROVED)
                    .toList();

                if (approved.isEmpty && myComments.isEmpty) {
                  return const Padding(
                    padding: EdgeInsets.only(top: 8),
                    child: Text('还没有评论，来做第一个发言的人吧！'),
                  );
                }
                if (approved.isEmpty) {
                  return const SizedBox.shrink();
                }

                return Column(
                  children: approved
                      .map(
                        (c) => Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: _CommentTile(comment: c, showStatus: false),
                        ),
                      )
                      .toList(growable: false),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class _CommentTile extends StatelessWidget {
  const _CommentTile({
    required this.comment,
    this.showStatus = false,
  });

  final VideoComment comment;
  final bool showStatus;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final status = comment.status;
    final isRejected = status == VideoCommentStatusEnum.REJECTED;
    final author = CommentAuthorDisplay.fromComment(comment);

    String statusText() {
      return switch (status) {
        VideoCommentStatusEnum.PENDING => '待审核',
        VideoCommentStatusEnum.APPROVED => '已通过',
        VideoCommentStatusEnum.REJECTED => '未通过',
      };
    }

    Color statusColor() {
      return switch (status) {
        VideoCommentStatusEnum.PENDING => AppTheme.banana,
        VideoCommentStatusEnum.APPROVED => AppTheme.mint,
        VideoCommentStatusEnum.REJECTED => AppTheme.coral,
      };
    }

    return DecoratedBox(
      decoration: BoxDecoration(
        color: isRejected
            ? AppTheme.coral.withValues(alpha: 0.05)
            : Colors.white,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(
          color: isRejected
              ? AppTheme.coral.withValues(alpha: 0.30)
              : AppTheme.ink.withValues(alpha: 0.08),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(12, 10, 12, 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Flexible(
                            child: Text(
                              author.displayName,
                              style: theme.textTheme.titleMedium,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          if (author.roleLabel != null) ...[
                            const SizedBox(width: 8),
                            _RolePill(label: author.roleLabel!),
                          ],
                        ],
                      ),
                      if (author.subtitle != null) ...[
                        const SizedBox(height: 2),
                        Text(
                          author.subtitle!,
                          style: theme.textTheme.bodySmall?.copyWith(
                            color: AppTheme.ink.withValues(alpha: 0.50),
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ],
                  ),
                ),
                if (showStatus)
                  _StatusPill(text: statusText(), color: statusColor()),
              ],
            ),
            const SizedBox(height: 6),
            Text(comment.content, style: theme.textTheme.bodyMedium),
            if (isRejected && (comment.rejectReason?.isNotEmpty ?? false)) ...[
              const SizedBox(height: 6),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.info_outline_rounded,
                    size: 14,
                    color: AppTheme.coral.withValues(alpha: 0.80),
                  ),
                  const SizedBox(width: 4),
                  Expanded(
                    child: Text(
                      '审核意见：${comment.rejectReason}',
                      style: theme.textTheme.bodySmall?.copyWith(
                        color: AppTheme.coral.withValues(alpha: 0.80),
                      ),
                    ),
                  ),
                ],
              ),
            ],
            const SizedBox(height: 8),
            Text(
              _formatDateTime(comment.createdAt),
              style: theme.textTheme.bodyMedium?.copyWith(
                color: AppTheme.ink.withValues(alpha: 0.60),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _StatusPill extends StatelessWidget {
  const _StatusPill({required this.text, required this.color});

  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.20),
        borderRadius: BorderRadius.circular(999),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
        child: Text(text),
      ),
    );
  }
}

class _RolePill extends StatelessWidget {
  const _RolePill({required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: AppTheme.mint.withValues(alpha: 0.18),
        borderRadius: BorderRadius.circular(999),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        child: Text(
          label,
          style: Theme.of(context).textTheme.bodySmall?.copyWith(
            color: AppTheme.ink.withValues(alpha: 0.65),
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}

String _formatTime(Duration d) {
  final totalSeconds = d.inSeconds.clamp(0, 1 << 30);
  final minutes = totalSeconds ~/ 60;
  final seconds = totalSeconds % 60;
  return '${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}';
}

String _formatDateTime(DateTime dt) {
  final local = dt.toLocal();
  final mm = local.month.toString().padLeft(2, '0');
  final dd = local.day.toString().padLeft(2, '0');
  final hh = local.hour.toString().padLeft(2, '0');
  final mi = local.minute.toString().padLeft(2, '0');
  return '$mm-$dd $hh:$mi';
}

class _FullscreenVideoPage extends StatelessWidget {
  const _FullscreenVideoPage({
    required this.controller,
    required this.speed,
    required this.onSpeedChanged,
  });

  final VideoPlayerController controller;
  final double speed;
  final ValueChanged<double> onSpeedChanged;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: ValueListenableBuilder<VideoPlayerValue>(
          valueListenable: controller,
          builder: (context, value, _) {
            final isReady = value.isInitialized;
            final isPlaying = value.isPlaying;
            final duration = value.duration;
            final position = value.position;

            final aspect = value.aspectRatio == 0 ? 16 / 9 : value.aspectRatio;

            return Stack(
              children: [
                Center(
                  child: AspectRatio(
                    aspectRatio: aspect,
                    child: GestureDetector(
                      onTap: !isReady
                          ? null
                          : () {
                              if (isPlaying) {
                                controller.pause();
                              } else {
                                controller.play();
                              }
                            },
                      child: VideoPlayer(controller),
                    ),
                  ),
                ),
                Positioned(
                  top: 8,
                  left: 8,
                  child: Material(
                    color: Colors.black.withValues(alpha: 0.28),
                    shape: const CircleBorder(),
                    child: InkWell(
                      customBorder: const CircleBorder(),
                      onTap: () => Navigator.of(context).pop(),
                      child: const Padding(
                        padding: EdgeInsets.all(8),
                        child: Icon(
                          Icons.close_rounded,
                          size: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 8,
                  right: 8,
                  child: PopupMenuButton<double>(
                    initialValue: speed,
                    onSelected: onSpeedChanged,
                    itemBuilder: (context) => const [
                      PopupMenuItem(value: 0.5, child: Text('0.5x')),
                      PopupMenuItem(value: 0.75, child: Text('0.75x')),
                      PopupMenuItem(value: 1.0, child: Text('1.0x')),
                      PopupMenuItem(value: 1.25, child: Text('1.25x')),
                      PopupMenuItem(value: 1.5, child: Text('1.5x')),
                      PopupMenuItem(value: 2.0, child: Text('2.0x')),
                    ],
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 6,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.black.withValues(alpha: 0.28),
                        borderRadius: BorderRadius.circular(999),
                      ),
                      child: Text(
                        '${speed.toStringAsFixed(speed == 1.0 ? 0 : 2)}x',
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 12,
                  right: 12,
                  bottom: 12,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: VideoProgressIndicator(
                          controller,
                          allowScrubbing: true,
                          colors: VideoProgressColors(
                            playedColor: AppTheme.coral,
                            bufferedColor: Colors.white.withValues(alpha: 0.30),
                            backgroundColor: Colors.white.withValues(
                              alpha: 0.18,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 6),
                      Row(
                        children: [
                          Text(
                            _formatTime(position),
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          const Spacer(),
                          Text(
                            _formatTime(duration),
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
