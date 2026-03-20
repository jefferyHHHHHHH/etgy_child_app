import 'package:etgy_openapi_client/etgy_openapi_client.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'data/live_repository.dart';

enum LiveTab {
  upcoming('upcoming'),
  living('living'),
  ended('ended');

  const LiveTab(this.queryValue);
  final String queryValue;
}

final liveListControllerProvider = AsyncNotifierProvider.autoDispose.family<
    LiveListController,
    List<LiveRoom>,
    LiveTab>(
  LiveListController.new,
);

class LiveListController extends AutoDisposeFamilyAsyncNotifier<List<LiveRoom>, LiveTab> {
  @override
  Future<List<LiveRoom>> build(LiveTab arg) async {
    return ref.read(liveRepositoryProvider).fetchPublicLives(tab: arg.queryValue);
  }

  Future<void> refresh() async {
    final tab = arg;
    state = const AsyncLoading();
    state = await AsyncValue.guard(
      () => ref.read(liveRepositoryProvider).fetchPublicLives(tab: tab.queryValue),
    );
  }
}
