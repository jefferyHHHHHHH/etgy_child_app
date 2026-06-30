import 'package:agora_rtc_engine/agora_rtc_engine.dart';
import 'package:etgy_openapi_client/etgy_openapi_client.dart';
import 'package:flutter/material.dart';
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
  int? _remoteUid;
  String? _channelName;
  String? _errorMessage;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _startWatching();
    });
  }

  Future<void> _startWatching() async {
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
      _errorMessage = null;
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
          });
        },
        onRemoteUserLeft: () {
          if (!mounted) return;
          setState(() {
            _remoteUid = null;
            _isWaitingHost = true;
          });
        },
      );

      if (!mounted) return;
      setState(() {
        _channelName = cred.channelName;
        _isConnecting = false;
        _isWaitingHost = _remoteUid == null;
      });
    } catch (error) {
      if (!mounted) return;
      setState(() {
        _isConnecting = false;
        _errorMessage = AppExceptionMapper.from(error).message;
      });
    }
  }

  @override
  void dispose() {
    _viewerService.leave();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final live = _live;
    final engine = _viewerService.engine;
    final remoteUid = _remoteUid;

    return Scaffold(
      appBar: AppBar(
        title: Text(live?.title ?? '直播观看'),
      ),
      body: _buildBody(engine: engine, remoteUid: remoteUid),
    );
  }

  Widget _buildBody({required RtcEngine? engine, required int? remoteUid}) {
    if (_isConnecting) {
      return const Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircularProgressIndicator(),
            SizedBox(height: 12),
            Text('正在进入直播间…'),
          ],
        ),
      );
    }

    if (_errorMessage != null) {
      return Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Text(_errorMessage!, textAlign: TextAlign.center),
        ),
      );
    }

    if (engine != null && remoteUid != null && _channelName != null) {
      return AgoraVideoView(
        controller: VideoViewController.remote(
          rtcEngine: engine,
          canvas: VideoCanvas(uid: remoteUid),
          connection: RtcConnection(channelId: _channelName),
          useFlutterTexture: true,
          useAndroidSurfaceView: true,
        ),
      );
    }

    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(Icons.live_tv_outlined, size: 48),
          const SizedBox(height: 12),
          Text(_isWaitingHost ? '老师还没开始上课，请稍等' : '等待老师开播…'),
        ],
      ),
    );
  }
}
