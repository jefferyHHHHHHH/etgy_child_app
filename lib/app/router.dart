import 'package:etgy_openapi_client/etgy_openapi_client.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../features/ai/pages/ai_tutor_page.dart';
import '../features/auth/auth_controller.dart';
import '../features/auth/auth_state.dart';
import '../features/auth/pages/auth_launch_page.dart';
import '../features/auth/pages/device_bind_page.dart';
import '../features/auth/pages/login_page.dart';
import '../features/favorites/pages/favorites_page.dart';
import '../features/home/pages/home_page.dart';
import '../features/learning/pages/learning_record_page.dart';
import '../features/lives/pages/live_list_page.dart';
import '../features/lives/pages/live_replay_page.dart';
import '../features/lives/pages/live_watch_page.dart';
import '../features/notifications/pages/notifications_page.dart';
import '../features/profile/pages/profile_page.dart';
import '../features/settings/pages/settings_page.dart';
import '../features/videos/pages/video_detail_page.dart';
import '../features/videos/pages/video_list_page.dart';
import '../features/videos/pages/video_player_page.dart';

class AppRoutes {
  static const launch = '/launch';
  static const login = '/login';
  static const bindDevice = '/bind-device';
  static const home = '/';

  static const videos = '/videos';
  static const videoDetail = '/videos/detail';
  static const videoPlayer = '/videos/player';

  static const lives = '/lives';
  static const liveWatch = '/lives/watch';
  static const liveReplay = '/lives/replay';

  static const profile = '/profile';
  static const favorites = '/favorites';
  static const learning = '/learning';
  static const settings = '/settings';
  static const notifications = '/notifications';
  static const aiTutor = '/ai';
}

final goRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: AppRoutes.launch,
    refreshListenable: _GoRouterRefreshNotifier(ref),
    redirect: (context, state) {
      final authState = ref.read(authControllerProvider);
      final isLaunching = state.matchedLocation == AppRoutes.launch;
      final isLoggingIn = state.matchedLocation == AppRoutes.login;
      final isBinding = state.matchedLocation == AppRoutes.bindDevice;

      if (authState.isHydrating) {
        return isLaunching ? null : AppRoutes.launch;
      }

      if (isLaunching) {
        if (!authState.isLoggedIn) {
          return AppRoutes.login;
        }
        if (!authState.isDeviceBound) {
          return AppRoutes.bindDevice;
        }
        return AppRoutes.home;
      }

      if (!authState.isLoggedIn) {
        return isLoggingIn ? null : AppRoutes.login;
      }

      if (authState.isLoggedIn && !authState.isDeviceBound) {
        return isBinding ? null : AppRoutes.bindDevice;
      }

      if (isLoggingIn || isBinding) {
        return AppRoutes.home;
      }

      return null;
    },
    routes: [
      GoRoute(
        path: AppRoutes.launch,
        builder: (context, state) => const AuthLaunchPage(),
      ),
      GoRoute(
        path: AppRoutes.login,
        builder: (context, state) => const LoginPage(),
      ),
      GoRoute(
        path: AppRoutes.bindDevice,
        builder: (context, state) => const DeviceBindPage(),
      ),
      GoRoute(
        path: AppRoutes.home,
        builder: (context, state) => const HomePage(),
      ),
      GoRoute(
        path: AppRoutes.videos,
        builder: (context, state) => const VideoListPage(),
      ),
      GoRoute(
        path: AppRoutes.videoDetail,
        builder: (context, state) => VideoDetailPage(
          video: state.extra is Video ? state.extra as Video : null,
        ),
      ),
      GoRoute(
        path: AppRoutes.videoPlayer,
        builder: (context, state) => VideoPlayerPage(
          video: state.extra is Video ? state.extra as Video : null,
        ),
      ),
      GoRoute(
        path: AppRoutes.lives,
        builder: (context, state) => const LiveListPage(),
      ),
      GoRoute(
        path: AppRoutes.liveWatch,
        builder: (context, state) => const LiveWatchPage(),
      ),
      GoRoute(
        path: AppRoutes.liveReplay,
        builder: (context, state) => const LiveReplayPage(),
      ),
      GoRoute(
        path: AppRoutes.profile,
        builder: (context, state) => const ProfilePage(),
      ),
      GoRoute(
        path: AppRoutes.favorites,
        builder: (context, state) => const FavoritesPage(),
      ),
      GoRoute(
        path: AppRoutes.learning,
        builder: (context, state) => const LearningRecordPage(),
      ),
      GoRoute(
        path: AppRoutes.settings,
        builder: (context, state) => const SettingsPage(),
      ),
      GoRoute(
        path: AppRoutes.notifications,
        builder: (context, state) => const NotificationsPage(),
      ),
      GoRoute(
        path: AppRoutes.aiTutor,
        builder: (context, state) => const AiTutorPage(),
      ),
    ],
  );
});

class _GoRouterRefreshNotifier extends ChangeNotifier {
  _GoRouterRefreshNotifier(this.ref) {
    // Any auth state change should trigger router redirect evaluation.
    _subscription = ref.listen<AuthState>(
      authControllerProvider,
      (previous, next) => notifyListeners(),
    );
  }

  final Ref ref;
  late final ProviderSubscription<AuthState> _subscription;

  @override
  void dispose() {
    _subscription.close();
    super.dispose();
  }
}
