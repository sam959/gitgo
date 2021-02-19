// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:authentication_repository/authentication_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gitgo/src/app.dart';
import 'package:gitgo/src/inbound/configuration/environment_config.dart';

void main() {
  testWidgets('Smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.

    var env = await EnvironmentConfig.forEnvironment('dev');
    await tester.pumpWidget(MyApp(
        config: env, authenticationRepository: AuthenticationRepository()));

    // Verify that our counter starts at 0.
    expect(find.text('Log into Github'), findsOneWidget);
    expect(find.text('1'), findsNothing);
  });
}
