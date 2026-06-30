import 'dart:async';

import 'package:agora_rtc_engine/agora_rtc_engine.dart';
import 'package:etgy_openapi_client/etgy_openapi_client.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/errors/app_exception_mapper.dart';
import '../data/live_repository.dart';
import '../services/agora_viewer_service.dart';

class LiveWatchPage extends ConsumerStatefulWidget {
  const LiveWatchPage({super.key, this.live});

  final LiveRoom? live;

  @override
  ConsumerState<LiveWatchPage> createState() => _LiveWatchPageState();
}

class _LiveWatchPageState extends ConsumerState<LiveWatchPage> {
  final _viewerService = AgoraViewerService();

  LiveRoom? _live;
  bool _isConnecting = true;
  bool _isWaitingHost = false;
  bool _isBuffering = false;
  bool _isFullscreen = false;
  bool _audioMuted = false;
  int? _remoteUid;
  String? _channelName;
  String? _errorMessage;
  bool _showControls = true;
  Timer? _hideControlsTimer;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _startWatching();
    });
  }

  Future<void> _startWatching() async {
    await _viewerService.leave();

    final live = widget.live;
    if (live == null) {
      setState(() {
        _isConnecting = false;
        _errorMessage = '未找到直播信息';
      });
      return;
    }

    setState(() {
      _live = live;
      _isConnecting = true;
      _isWaitingHost = false;
      _isBuffering = false;
      _errorMessage = null;
      _remoteUid = null;
      _channelName = null;
    });

    try {
      final repository = ref.read(liveRepositoryProvider);
      final cred = await repository.fetchAgoraRtcToken(id: live.id);

      if (cred.role !=
          ApiLiveIdAgoraRtcTokenPost200ResponseAllOfDataRoleEnum.subscriber) {
        throw Exception('当前账号没有观看权限');
      }

      await _viewerService.joinAsAudience(
        appId: cred.appId,
        token: cred.token,
        channelName: cred.channelName,
        uid: cred.uid,
        onRemoteUserJoined: (remoteUid) {
          if (!mounted) return;
          setState(() {
            _remoteUid = remoteUid;
            _isWaitingHost = false;
            _isBuffering = true;
          });
        },
        onRemoteUserLeft: () {
          if (!mounted) return;
          setState(() {
            _remoteUid = null;
            _isWaitingHost = true;
            _isBuffering = false;
          });
        },
        onFirstRemoteVideoFrame: (remoteUid, width, height) {
          if (!mounted) return;
          setState(() => _isBuffering = false);
        },
      );

      if (!mounted) return;
      setState(() {
        _channelName = cred.channelName;
        _isConnecting = false;
        _isWaitingHost = _remoteUid == null;
        _isBuffering = _remoteUid != null;
      });
    } catch (error) {
      if (!mounted) return;
      setState(() {
        _isConnecting = false;
        _errorMessage = AppExceptionMapper.from(error).message;
      });
    }
  }

  void _revealControls() {
    setState(() => _showControls = true);
    _hideControlsTimer?.cancel();
    _hideControlsTimer = Timer(const Duration(seconds: 4), () {
      if (!mounted || !_isFullscreen) return;
      setState(() => _showControls = false);
    });
  }

  Future<void> _toggleFullscreen() async {
    if (_isFullscreen) {
      await _exitFullscreen();
    } else {
      await _enterFullscreen();
    }
  }

  Future<void> _enterFullscreen() async {
    try {
      await SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    } catch (_) {
      // Best-effort.
    }
    if (!mounted) return;
    setState(() {
      _isFullscreen = true;
      _showControls = true;
    });
    _revealControls();
  }

  Future<void> _exitFullscreen() async {
    _hideControlsTimer?.cancel();
    try {
      await SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    } catch (_) {
      // Best-effort.
    }
    if (!mounted) return;
    setState(() {
      _isFullscreen = false;
      _showControls = true;
    });
  }

  Future<void> _toggleAudio() async {
    final next = !_audioMuted;
    await _viewerService.setRemoteAudioMuted(next);
    if (!mounted) return;
    setState(() => _audioMuted = next);
  }

  @override
  void dispose() {
    _hideControlsTimer?.cancel();
    if (_isFullscreen) {
      unawaited(_exitFullscreen());
    }
    _viewerService.leave();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final live = _live;
    final engine = _viewerService.engine;
    final remoteUid = _remoteUid;

    return PopScope(
      canPop: !_isFullscreen,
      onPopInvokedWithResult: (didPop, _) async {
        if (didPop) return;
        await _exitFullscreen();
      },
      child: Scaffold(
        backgroundColor: Colors.black,
        extendBodyBehindAppBar: _isFullscreen,
        appBar: _isFullscreen
            ? null
            : AppBar(
                title: Text(live?.title ?? '直播观看'),
                backgroundColor: Colors.black87,
                foregroundColor: Colors.white,
              ),
        body: GestureDetector(
          onTap: _isFullscreen ? _revealControls : null,
          child: _buildBody(engine: engine, remoteUid: remoteUid),
        ),
      ),
    );
  }

  Widget _buildBody({required RtcEngine? engine, required int? remoteUid}) {
    if (_isConnecting) {
      return const _LiveLoadingOverlay(
        title: '正在进入直播间…',
        hint: '正在连接直播频道，请稍候',
      );
    }

    if (_errorMessage != null) {
      return _LiveMessagePanel(
        icon: Icons.error_outline_rounded,
        message: _errorMessage!,
        actionLabel: '重试',
        onAction: _startWatching,
      );
    }

    if (engine != null && remoteUid != null && _channelName != null) {
      return Stack(
        fit: StackFit.expand,
        children: [
          AgoraVideoView(
            controller: VideoViewController.remote(
              rtcEngine: engine,
              canvas: VideoCanvas(
                uid: remoteUid,
                renderMode: RenderModeType.renderModeFit,
              ),
              connection: RtcConnection(channelId: _channelName),
              useFlutterTexture: defaultTargetPlatform != TargetPlatform.android,
              useAndroidSurfaceView: defaultTargetPlatform == TargetPlatform.android,
            ),
          ),
          if (_isBuffering)
            const _LiveLoadingOverlay(
              title: '正在加载画面…',
              hint: '首帧到达前请稍等',
            ),
          _LiveControlOverlay(
            visible: _showControls || !_isFullscreen,
            title: _live?.title ?? '直播观看',
            isFullscreen: _isFullscreen,
            audioMuted: _audioMuted,
            onBack: () {
              if (_isFullscreen) {
                unawaited(_exitFullscreen());
              } else if (mounted) {
                Navigator.of(context).maybePop();
              }
            },
            onToggleFullscreen: _toggleFullscreen,
            onToggleAudio: _toggleAudio,
          ),
        ],
      );
    }

    return _LiveMessagePanel(
      icon: Icons.live_tv_outlined,
      message: _isWaitingHost ? '老师还没开始上课，请稍等' : '等待老师开播…',
      actionLabel: '刷新',
      onAction: _startWatching,
    );
  }
}

class _LiveLoadingOverlay extends StatelessWidget {
  const _LiveLoadingOverlay({
    required this.title,
    required this.hint,
  });

  final String title;
  final String hint;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black.withValues(alpha: 0.72),
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(
              width: 42,
              height: 42,
              child: CircularProgressIndicator(
                strokeWidth: 3,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            Text(
              hint,
              style: TextStyle(
                color: Colors.white.withValues(alpha: 0.72),
                fontSize: 13,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

class _LiveMessagePanel extends StatelessWidget {
  const _LiveMessagePanel({
    required this.icon,
    required this.message,
    required this.actionLabel,
    required this.onAction,
  });

  final IconData icon;
  final String message;
  final String actionLabel;
  final VoidCallback onAction;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, size: 48, color: Colors.white70),
            const SizedBox(height: 12),
            Text(
              message,
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.white70, fontSize: 15),
            ),
            const SizedBox(height: 16),
            FilledButton.icon(
              onPressed: onAction,
              icon: const Icon(Icons.refresh_rounded, size: 18),
              label: Text(actionLabel),
            ),
          ],
        ),
      ),
    );
  }
}

class _LiveControlOverlay extends StatelessWidget {
  const _LiveControlOverlay({
    required this.visible,
    required this.title,
    required this.isFullscreen,
    required this.audioMuted,
    required this.onBack,
    required this.onToggleFullscreen,
    required this.onToggleAudio,
  });

  final bool visible;
  final String title;
  final bool isFullscreen;
  final bool audioMuted;
  final VoidCallback onBack;
  final VoidCallback onToggleFullscreen;
  final VoidCallback onToggleAudio;

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: !visible,
      child: AnimatedOpacity(
        opacity: visible ? 1 : 0,
        duration: const Duration(milliseconds: 220),
        child: DecoratedBox(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.black.withValues(alpha: 0.55),
                Colors.transparent,
                Colors.transparent,
                Colors.black.withValues(alpha: 0.65),
              ],
              stops: const [0, 0.28, 0.72, 1],
            ),
          ),
          child: SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 8, 12, 0),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: onBack,
                        icon: Icon(
                          isFullscreen
                              ? Icons.fullscreen_exit_rounded
                              : Icons.arrow_back_rounded,
                          color: Colors.white,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 2,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: const Text(
                          'LIVE',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 11,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          title,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _LiveControlButton(
                        icon: audioMuted
                            ? Icons.volume_off_rounded
                            : Icons.volume_up_rounded,
                        label: audioMuted ? '开声音' : '静音',
                        onPressed: onToggleAudio,
                      ),
                      const SizedBox(width: 16),
                      _LiveControlButton(
                        icon: isFullscreen
                            ? Icons.fullscreen_exit_rounded
                            : Icons.fullscreen_rounded,
                        label: isFullscreen ? '退出全屏' : '全屏',
                        onPressed: onToggleFullscreen,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _LiveControlButton extends StatelessWidget {
  const _LiveControlButton({
    required this.icon,
    required this.label,
    required this.onPressed,
  });

  final IconData icon;
  final String label;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white.withValues(alpha: 0.16),
      borderRadius: BorderRadius.circular(28),
      child: InkWell(
        onTap: onPressed,
        borderRadius: BorderRadius.circular(28),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(icon, color: Colors.white, size: 20),
              const SizedBox(width: 8),
              Text(
                label,
                style: const TextStyle(color: Colors.white, fontSize: 14),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
