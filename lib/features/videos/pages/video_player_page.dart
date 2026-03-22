import 'dart:async';

import 'package:etgy_openapi_client/etgy_openapi_client.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:video_player/video_player.dart';

import '../../../core/theme/app_theme.dart';
import '../../../core/widgets/playful_background.dart';
import '../../auth/auth_controller.dart';
import '../data/video_repository.dart';
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

  final _commentController = TextEditingController();

  @override
  void initState() {
    super.initState();

    final url = widget.video?.url;
    if (url == null || url.trim().isEmpty) {
      _errorMessage = '未获取到视频地址';
      return;
    }

    final uri = Uri.tryParse(url.trim());
    if (uri == null || (!uri.isScheme('http') && !uri.isScheme('https'))) {
      _errorMessage = '视频地址格式不正确：$url';
      return;
    }

    final token = ref.read(authControllerProvider).token?.trim();
    final headers = <String, String>{
      if (token != null && token.isNotEmpty) 'Authorization': 'Bearer $token',
    };

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
            _errorMessage = e.toString();
          });
        });
  }

  void _startWatchReporting() {
    _watchTimer?.cancel();
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

    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: PlayfulBackground(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 12, 16, 24),
          child: _errorMessage != null
              ? Center(
                  child: Text(
                    '播放失败：${_errorMessage!}',
                    textAlign: TextAlign.center,
                  ),
                )
              : controller == null || _initializeFuture == null
              ? const Center(child: CircularProgressIndicator())
              : ListView(
                  children: [
                    _PlayerCard(
                      controller: controller,
                      initializeFuture: _initializeFuture!,
                    ),
                    const SizedBox(height: 12),
                    _PlaybackControls(
                      controller: controller,
                      speed: _speed,
                      onSpeedChanged: (value) async {
                        setState(() => _speed = value);
                        if (!controller.value.isInitialized) return;
                        await controller.setPlaybackSpeed(value);
                      },
                    ),
                    if (video != null) ...[
                      const SizedBox(height: 12),
                      _EngagementBar(video: video),
                      const SizedBox(height: 12),
                      _CommentComposer(
                        controller: _commentController,
                        onSend: () async {
                          final text = _commentController.text.trim();
                          if (text.isEmpty) return;

                          try {
                            await ref
                                .read(
                                  videoCommentsControllerProvider(
                                    video.id,
                                  ).notifier,
                                )
                                .post(text);
                            _commentController.clear();
                            if (!context.mounted) return;
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text('评论已提交（可能需要审核）')),
                            );
                          } catch (e) {
                            if (!context.mounted) return;
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text(e.toString())),
                            );
                          }
                        },
                      ),
                      const SizedBox(height: 8),
                      _CommentsSection(videoId: video.id),
                    ],
                  ],
                ),
        ),
      ),
    );
  }
}

class _PlayerCard extends StatelessWidget {
  const _PlayerCard({required this.controller, required this.initializeFuture});

  final VideoPlayerController controller;
  final Future<void> initializeFuture;

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
            child: VideoPlayer(controller),
          );
        },
      ),
    );
  }
}

class _PlaybackControls extends StatelessWidget {
  const _PlaybackControls({
    required this.controller,
    required this.speed,
    required this.onSpeedChanged,
  });

  final VideoPlayerController controller;
  final double speed;
  final ValueChanged<double> onSpeedChanged;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Card(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(14, 12, 14, 12),
        child: ValueListenableBuilder<VideoPlayerValue>(
          valueListenable: controller,
          builder: (context, value, _) {
            final duration = value.duration;
            final position = value.position;
            final isReady = value.isInitialized;
            final isPlaying = value.isPlaying;

            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: VideoProgressIndicator(
                    controller,
                    allowScrubbing: true,
                    colors: VideoProgressColors(
                      playedColor: AppTheme.coral,
                      bufferedColor: AppTheme.ink.withValues(alpha: 0.10),
                      backgroundColor: AppTheme.ink.withValues(alpha: 0.06),
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Text(
                      _formatTime(position),
                      style: theme.textTheme.bodyMedium,
                    ),
                    const Spacer(),
                    Text(
                      _formatTime(duration),
                      style: theme.textTheme.bodyMedium,
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    IconButton(
                      iconSize: 44,
                      onPressed: !isReady
                          ? null
                          : () {
                              if (isPlaying) {
                                controller.pause();
                              } else {
                                controller.play();
                              }
                            },
                      icon: Icon(
                        isPlaying
                            ? Icons.pause_circle_filled
                            : Icons.play_circle_filled,
                      ),
                    ),
                    const Spacer(),
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
                          horizontal: 12,
                          vertical: 8,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(999),
                          border: Border.all(
                            color: AppTheme.ink.withValues(alpha: 0.10),
                          ),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Icon(Icons.speed_rounded, size: 18),
                            const SizedBox(width: 6),
                            Text(
                              '${speed.toStringAsFixed(speed == 1.0 ? 0 : 2)}x',
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            );
          },
        ),
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
    final state = ref.watch(videoEngagementControllerProvider(video));
    final controller = ref.read(
      videoEngagementControllerProvider(video).notifier,
    );

    return Card(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(12, 10, 12, 10),
        child: Row(
          children: [
            Expanded(
              child: _ActionChip(
                icon: state.liked
                    ? Icons.thumb_up_rounded
                    : Icons.thumb_up_outlined,
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
                icon: state.favorited
                    ? Icons.bookmark_rounded
                    : Icons.bookmark_outline_rounded,
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
            Text(
              '播放 ${video.metrics?.playCount ?? 0}',
              style: theme.textTheme.bodyMedium,
            ),
          ],
        ),
      ),
    );
  }
}

class _ActionChip extends StatelessWidget {
  const _ActionChip({
    required this.icon,
    required this.label,
    required this.busy,
    required this.onTap,
  });

  final IconData icon;
  final String label;
  final bool busy;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

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
                  ? const SizedBox(
                      width: 16,
                      height: 16,
                      child: CircularProgressIndicator(strokeWidth: 2),
                    )
                  : Icon(icon, size: 18),
              const SizedBox(width: 6),
              Flexible(
                child: Text(
                  label,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.bodyMedium,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _CommentComposer extends StatelessWidget {
  const _CommentComposer({required this.controller, required this.onSend});

  final TextEditingController controller;
  final VoidCallback onSend;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Card(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(12, 10, 12, 10),
        child: Row(
          children: [
            Expanded(
              child: TextField(
                controller: controller,
                textInputAction: TextInputAction.send,
                onSubmitted: (_) => onSend(),
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
              onPressed: onSend,
              style: FilledButton.styleFrom(minimumSize: const Size(86, 44)),
              child: const Text('发布'),
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
    final comments = ref.watch(videoCommentsControllerProvider(videoId));

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
            const SizedBox(height: 8),
            comments.when(
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (e, _) => Text(e.toString()),
              data: (items) {
                if (items.isEmpty) {
                  return const Padding(
                    padding: EdgeInsets.only(top: 8),
                    child: Text('还没有评论，来做第一个发言的人吧！'),
                  );
                }

                return Column(
                  children: items
                      .map(
                        (c) => Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: _CommentTile(comment: c),
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
  const _CommentTile({required this.comment});

  final VideoComment comment;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final status = comment.status;

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
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: AppTheme.ink.withValues(alpha: 0.08)),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(12, 10, 12, 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    '用户 ${comment.authorId}',
                    style: theme.textTheme.titleMedium,
                  ),
                ),
                _StatusPill(text: statusText(), color: statusColor()),
              ],
            ),
            const SizedBox(height: 6),
            Text(comment.content, style: theme.textTheme.bodyMedium),
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
