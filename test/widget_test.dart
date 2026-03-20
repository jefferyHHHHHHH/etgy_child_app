// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:etgy_child_app/app/app.dart';
import 'package:etgy_child_app/core/models/user_profile.dart';
import 'package:etgy_child_app/features/auth/auth_controller.dart';
import 'package:etgy_child_app/features/auth/auth_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

class _FakeAuthController extends AuthController {
  @override
  AuthState build() {
    return const AuthState(
      status: AccountStatus.pendingActivation,
      token: null,
      user: null,
      isDeviceBound: false,
      bindToken: null,
      isLoading: false,
      isHydrating: false,
      errorMessage: null,
    );
  }
}

void main() {
  testWidgets('App boots to login page when unauthenticated', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(
      ProviderScope(
        overrides: <Override>[
          authControllerProvider.overrideWith(_FakeAuthController.new),
        ],
        child: const EtgyChildApp(),
      ),
    );
    await tester.pumpAndSettle();

    expect(find.text('开始学习'), findsOneWidget);
    expect(find.text('账号'), findsOneWidget);
    expect(find.text('密码'), findsOneWidget);
  });
}
