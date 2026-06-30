import 'package:agora_rtc_engine/agora_rtc_engine.dart';
import 'package:flutter/foundation.dart';

class AgoraViewerService {
  RtcEngine? _engine;
  int? _remoteUid;

  RtcEngine? get engine => _engine;
  int? get remoteUid => _remoteUid;

  Future<RtcEngine> joinAsAudience({
    required String appId,
    required String token,
    required String channelName,
    required int uid,
    required void Function(int remoteUid) onRemoteUserJoined,
    required VoidCallback onRemoteUserLeft,
    void Function(int remoteUid, int width, int height)? onFirstRemoteVideoFrame,
  }) async {
    final engine = createAgoraRtcEngine();
    await engine.initialize(RtcEngineContext(appId: appId));
    await engine.enableVideo();
    await engine.enableAudio();
    await engine.setDefaultAudioRouteToSpeakerphone(true);
    await engine.setClientRole(role: ClientRoleType.clientRoleAudience);

    engine.registerEventHandler(
      RtcEngineEventHandler(
        onUserJoined: (RtcConnection connection, int remoteUid, int elapsed) async {
          _remoteUid = remoteUid;
          await engine.setRemoteVideoStreamType(
            uid: remoteUid,
            streamType: VideoStreamType.videoStreamHigh,
          );
          onRemoteUserJoined(remoteUid);
        },
        onUserOffline: (
          RtcConnection connection,
          int remoteUid,
          UserOfflineReasonType reason,
        ) {
          if (_remoteUid == remoteUid) {
            _remoteUid = null;
          }
          onRemoteUserLeft();
        },
        onFirstRemoteVideoFrame: (
          RtcConnection connection,
          int remoteUid,
          int width,
          int height,
          int elapsed,
        ) {
          onFirstRemoteVideoFrame?.call(remoteUid, width, height);
        },
      ),
    );

    await engine.joinChannel(
      token: token,
      channelId: channelName,
      uid: uid,
      options: const ChannelMediaOptions(
        channelProfile: ChannelProfileType.channelProfileLiveBroadcasting,
        clientRoleType: ClientRoleType.clientRoleAudience,
        autoSubscribeVideo: true,
        autoSubscribeAudio: true,
      ),
    );

    _engine = engine;
    return engine;
  }

  Future<void> setRemoteAudioMuted(bool muted) async {
    final remoteUid = _remoteUid;
    if (remoteUid == null) return;
    await _engine?.muteRemoteAudioStream(uid: remoteUid, mute: muted);
  }

  Future<void> leave() async {
    await _engine?.leaveChannel();
    await _engine?.release();
    _engine = null;
    _remoteUid = null;
  }
}
