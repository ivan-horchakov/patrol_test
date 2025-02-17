import 'package:patrol/patrol.dart';
import 'package:patrol_test/main.dart' as app;

Future<void> runMobileApp(PatrolIntegrationTester patrol) async {
  app.main();
  await patrol.pumpAndTrySettle(timeout: const Duration(seconds: 3));
  await patrol.tester.idle();
}

// if value isn't passed as "--dart-define=SKIPPING_TESTS=true" it'll use "defaultValue: false"
const bool isSkippingTests = bool.fromEnvironment('SKIPPING_TESTS');
