import 'package:etgy_openapi_client/etgy_openapi_client.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'data/video_repository.dart';

class VideoEngagementState {
  const VideoEngagementState({
    required this.liked,
    required this.favorited,
    required this.likeCount,
    required this.favCount,
    required this.isLiking,
    required this.isFavoriting,
  });

  factory VideoEngagementState.initial(Video video) {
    final metrics = video.metrics;
    return VideoEngagementState(
      liked: false,
      favorited: false,
      likeCount: metrics?.likeCount ?? 0,
      favCount: metrics?.favCount ?? 0,
      isLiking: false,
      isFavoriting: false,
    );
  }

  final bool liked;
  final bool favorited;
  final int likeCount;
  final int favCount;
  final bool isLiking;
  final bool isFavoriting;

  VideoEngagementState copyWith({
    bool? liked,
    bool? favorited,
    int? likeCount,
    int? favCount,
    bool? isLiking,
    bool? isFavoriting,
  }) {
    return VideoEngagementState(
      liked: liked ?? this.liked,
      favorited: favorited ?? this.favorited,
      likeCount: likeCount ?? this.likeCount,
      favCount: favCount ?? this.favCount,
      isLiking: isLiking ?? this.isLiking,
      isFavoriting: isFavoriting ?? this.isFavoriting,
    );
  }
}

final videoEngagementControllerProvider = NotifierProvider.autoDispose
    .family<VideoEngagementController, VideoEngagementState, Video>(
      VideoEngagementController.new,
    );

class VideoEngagementController
    extends AutoDisposeFamilyNotifier<VideoEngagementState, Video> {
  @override
  VideoEngagementState build(Video arg) {
    return VideoEngagementState.initial(arg);
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
      await ref.read(videoRepositoryProvider).toggleLike(videoId: arg.id);
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
      await ref.read(videoRepositoryProvider).toggleFavorite(videoId: arg.id);
    } catch (_) {
      state = previous.copyWith(isFavoriting: false);
      rethrow;
    }

    state = state.copyWith(isFavoriting: false);
  }
}
