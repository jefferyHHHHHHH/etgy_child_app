import 'package:etgy_openapi_client/etgy_openapi_client.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'data/video_repository.dart';
import 'video_engagement_store.dart';

class VideoEngagementArgs {
  const VideoEngagementArgs({
    required this.videoId,
    this.initialPlayCount,
    this.initialLikeCount,
    this.initialFavCount,
  });

  factory VideoEngagementArgs.fromVideo(Video video) {
    return VideoEngagementArgs(
      videoId: video.id,
      initialPlayCount: video.metrics?.playCount,
      initialLikeCount: video.metrics?.likeCount,
      initialFavCount: video.metrics?.favCount,
    );
  }

  final int videoId;
  final int? initialPlayCount;
  final int? initialLikeCount;
  final int? initialFavCount;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is VideoEngagementArgs && other.videoId == videoId;

  @override
  int get hashCode => videoId.hashCode;
}

class VideoEngagementState {
  const VideoEngagementState({
    required this.liked,
    required this.favorited,
    required this.playCount,
    required this.likeCount,
    required this.favCount,
    required this.isLiking,
    required this.isFavoriting,
    required this.isRefreshing,
  });

  factory VideoEngagementState.initial({
    required VideoEngagementArgs args,
    required VideoEngagementStoreState store,
  }) {
    return VideoEngagementState(
      liked: store.likedIds.contains(args.videoId),
      favorited: store.favoritedIds.contains(args.videoId),
      playCount: args.initialPlayCount ?? 0,
      likeCount: args.initialLikeCount ?? 0,
      favCount: args.initialFavCount ?? 0,
      isLiking: false,
      isFavoriting: false,
      isRefreshing: false,
    );
  }

  final bool liked;
  final bool favorited;
  final int playCount;
  final int likeCount;
  final int favCount;
  final bool isLiking;
  final bool isFavoriting;
  final bool isRefreshing;

  VideoEngagementState copyWith({
    bool? liked,
    bool? favorited,
    int? playCount,
    int? likeCount,
    int? favCount,
    bool? isLiking,
    bool? isFavoriting,
    bool? isRefreshing,
  }) {
    return VideoEngagementState(
      liked: liked ?? this.liked,
      favorited: favorited ?? this.favorited,
      playCount: playCount ?? this.playCount,
      likeCount: likeCount ?? this.likeCount,
      favCount: favCount ?? this.favCount,
      isLiking: isLiking ?? this.isLiking,
      isFavoriting: isFavoriting ?? this.isFavoriting,
      isRefreshing: isRefreshing ?? this.isRefreshing,
    );
  }
}

final videoEngagementControllerProvider = NotifierProvider.family<
    VideoEngagementController,
    VideoEngagementState,
    VideoEngagementArgs>(VideoEngagementController.new);

class VideoEngagementController
    extends FamilyNotifier<VideoEngagementState, VideoEngagementArgs> {
  bool _refreshScheduled = false;
  bool _refreshPending = false;

  @override
  VideoEngagementState build(VideoEngagementArgs arg) {
    ref.listen(videoEngagementStoreProvider, (previous, next) {
      if (previous == null) return;

      final liked = next.likedIds.contains(arg.videoId);
      final favorited = next.favoritedIds.contains(arg.videoId);
      if (liked == state.liked && favorited == state.favorited) return;

      state = state.copyWith(liked: liked, favorited: favorited);
    });

    if (!_refreshScheduled) {
      _refreshScheduled = true;
      Future.microtask(refreshFromServer);
    }

    final store = ref.read(videoEngagementStoreProvider);
    return VideoEngagementState.initial(args: arg, store: store);
  }

  /// 从服务端拉取最新 metrics（进入详情页时调用一次）。
  Future<void> refreshFromServer() async {
    if (state.isRefreshing) {
      _refreshPending = true;
      return;
    }

    state = state.copyWith(isRefreshing: true);

    try {
      final video = await ref
          .read(videoRepositoryProvider)
          .fetchVideoById(videoId: arg.videoId);
      final metrics = video.metrics;
      if (metrics != null) {
        state = state.copyWith(
          playCount: metrics.playCount,
          likeCount: metrics.likeCount,
          favCount: metrics.favCount,
        );
      }
    } finally {
      state = state.copyWith(isRefreshing: false);

      if (_refreshPending) {
        _refreshPending = false;
        await refreshFromServer();
      }
    }
  }

  /// 播放上报成功后，仅刷新播放量（不影响点赞/收藏计数）。
  Future<void> refreshPlayCountFromServer() async {
    try {
      final video = await ref
          .read(videoRepositoryProvider)
          .fetchVideoById(videoId: arg.videoId);
      final playCount = video.metrics?.playCount;
      if (playCount == null) return;

      state = state.copyWith(playCount: playCount);
    } catch (_) {
      // Best-effort.
    }
  }

  Future<void> toggleLike() async {
    if (state.isLiking) return;

    final wasLiked = state.liked;
    state = state.copyWith(isLiking: true);

    try {
      await ref.read(videoRepositoryProvider).toggleLike(videoId: arg.videoId);

      final nowLiked = !wasLiked;
      await ref
          .read(videoEngagementStoreProvider.notifier)
          .setLiked(videoId: arg.videoId, liked: nowLiked);

      state = state.copyWith(liked: nowLiked, isLiking: false);
      await _syncMetricsFromServer(
        fallbackLikeCount: _adjustCount(
          current: state.likeCount,
          wasActive: wasLiked,
          nowActive: nowLiked,
        ),
      );
    } catch (_) {
      state = state.copyWith(isLiking: false);
      rethrow;
    }
  }

  Future<void> toggleFavorite() async {
    if (state.isFavoriting) return;

    final wasFavorited = state.favorited;
    state = state.copyWith(isFavoriting: true);

    try {
      await ref
          .read(videoRepositoryProvider)
          .toggleFavorite(videoId: arg.videoId);

      final nowFavorited = !wasFavorited;
      await ref
          .read(videoEngagementStoreProvider.notifier)
          .setFavorited(videoId: arg.videoId, favorited: nowFavorited);

      state = state.copyWith(favorited: nowFavorited, isFavoriting: false);
      await _syncMetricsFromServer(
        fallbackFavCount: _adjustCount(
          current: state.favCount,
          wasActive: wasFavorited,
          nowActive: nowFavorited,
        ),
      );
    } catch (_) {
      state = state.copyWith(isFavoriting: false);
      rethrow;
    }
  }

  Future<void> _syncMetricsFromServer({
    int? fallbackLikeCount,
    int? fallbackFavCount,
  }) async {
    try {
      final video = await ref
          .read(videoRepositoryProvider)
          .fetchVideoById(videoId: arg.videoId);
      final metrics = video.metrics;
      if (metrics == null) return;

      state = state.copyWith(
        playCount: metrics.playCount,
        likeCount: metrics.likeCount,
        favCount: metrics.favCount,
      );
    } catch (_) {
      if (fallbackLikeCount != null || fallbackFavCount != null) {
        state = state.copyWith(
          likeCount: fallbackLikeCount ?? state.likeCount,
          favCount: fallbackFavCount ?? state.favCount,
        );
      }
    }
  }

  static int _adjustCount({
    required int current,
    required bool wasActive,
    required bool nowActive,
  }) {
    if (wasActive == nowActive) return current;
    if (nowActive) return current + 1;
    return (current - 1).clamp(0, 1 << 30);
  }
}
