import 'package:etgy_openapi_client/etgy_openapi_client.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'live_remote_data_source.dart';

final liveRepositoryProvider = Provider<LiveRepository>((Ref ref) {
  return LiveRepository(remote: ref.watch(liveRemoteDataSourceProvider));
});

class LiveRepository {
  LiveRepository({required this.remote});

  final LiveRemoteDataSource remote;

  Future<List<LiveRoom>> fetchPublicLives({
    required String tab,
    int page = 1,
    int pageSize = 20,
    int? collegeId,
    String? search,
  }) {
    return remote.fetchPublicLives(
      tab: tab,
      page: page,
      pageSize: pageSize,
      collegeId: collegeId,
      search: search,
    );
  }

  Future<LiveRoom> fetchLiveDetail({required int id}) {
    return remote.fetchLiveDetail(id: id);
  }
}
