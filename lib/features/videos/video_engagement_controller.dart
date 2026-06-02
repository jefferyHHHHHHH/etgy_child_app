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
      identical(this, other) || other is VideoEngagementArgs && other.videoId == videoId;

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

final videoEngagementControllerProvider =
    NotifierProvider.family<VideoEngagementController, VideoEngagementState, VideoEngagementArgs>(
  VideoEngagementController.new,
);

class VideoEngagementController
    extends FamilyNotifier<VideoEngagementState, VideoEngagementArgs> {
  bool _refreshScheduled = false;

  @override
  VideoEngagementState build(VideoEngagementArgs arg) {
    final store = ref.watch(videoEngagementStoreProvider);

    // Keep liked/favorited synced to the global store.
    ref.listen(videoEngagementStoreProvider, (previous, next) {
      if (previous == null) return;
      final liked = next.likedIds.contains(arg.videoId);
      final favorited = next.favoritedIds.contains(arg.videoId);
      if (liked != state.liked || favorited != state.favorited) {
        state = state.copyWith(liked: liked, favorited: favorited);
      }
    });

    if (!_refreshScheduled) {
      _refreshScheduled = true;
      Future.microtask(refreshFromServer);
    }

    return VideoEngagementState.initial(args: arg, store: store);
  }

  Future<void> refreshFromServer() async {
    if (state.isRefreshing) return;

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
    }
  }

  Future<void> toggleLike() async {
    if (state.isLiking) return;

    final previous = state;

    final nextLiked = !state.liked;
    final nextCount = (state.likeCount + (nextLiked ? 1 : -1)).clamp(
      0,
      1 << 30,
    );

    state = state.copyWith(
      liked: nextLiked,
      likeCount: nextCount,
      isLiking: true,
    );

    try {
      await ref.read(videoRepositoryProvider).toggleLike(videoId: arg.videoId);
      await ref
          .read(videoEngagementStoreProvider.notifier)
          .setLiked(videoId: arg.videoId, liked: nextLiked);
      await refreshFromServer();
    } catch (_) {
      state = previous.copyWith(isLiking: false);
      rethrow;
    }

    state = state.copyWith(isLiking: false);
  }

  Future<void> toggleFavorite() async {
    if (state.isFavoriting) return;

    final previous = state;

    final nextFav = !state.favorited;
    final nextCount = (state.favCount + (nextFav ? 1 : -1)).clamp(0, 1 << 30);

    state = state.copyWith(
      favorited: nextFav,
      favCount: nextCount,
      isFavoriting: true,
    );

    try {
      await ref.read(videoRepositoryProvider).toggleFavorite(videoId: arg.videoId);
      await ref
          .read(videoEngagementStoreProvider.notifier)
          .setFavorited(videoId: arg.videoId, favorited: nextFav);
      await refreshFromServer();
    } catch (_) {
      state = previous.copyWith(isFavoriting: false);
      rethrow;
    }

    state = state.copyWith(isFavoriting: false);
  }
}
