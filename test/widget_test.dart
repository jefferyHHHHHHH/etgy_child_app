// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:etgy_child_app/app/app.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('App boots to login page when unauthenticated', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const ProviderScope(child: EtgyChildApp()));
    await tester.pumpAndSettle();

    expect(find.text('登录'), findsWidgets);
    expect(find.text('账号'), findsOneWidget);
    expect(find.text('密码'), findsOneWidget);
  });
}
