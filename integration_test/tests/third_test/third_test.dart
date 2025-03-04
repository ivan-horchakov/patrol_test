import 'package:flutter_test/flutter_test.dart';
import 'package:patrol/patrol.dart';

import '../../extensions/extensions.dart';
import '../../pages/home_page_pom.dart';

void main() {
  patrolTest('[0003] Third Test', (patrol) async {
    //Run the app
    await runMobileApp(patrol);

    //Check all widgets
    await patrol.waitUntilVisible(MyHomePagePOM.appBarTitleByKeyFinder);
    expect(MyHomePagePOM.appBarTitleByKeyFinder, findsOneWidget);
    expect(MyHomePagePOM.pushedInfoTextByKeyFinder, findsOneWidget);
    expect(MyHomePagePOM.zeroInitialCounterByKeyFinder, findsOneWidget);
    expect(MyHomePagePOM.incrementCounterFabByKeyFinder, findsOneWidget);

    await patrol.native2.pressHome();
    await patrol.pumpAndTrySettle(duration: const Duration(seconds: 1));
    await patrol.native2.openApp(appId: "com.example.patrol_test");
    await patrol.pumpAndTrySettle(duration: const Duration(seconds: 1));

    for (var i = 0; i < 3; i++) {
      //Tap "i" times on the Increment button
      await patrol.tap(MyHomePagePOM.incrementCounterFabByKeyFinder);

      //Check that Increment Counter reflects taps
      await patrol.waitUntilVisible(MyHomePagePOM.findCounterByDigit((i + 1).toString()));
      expect(MyHomePagePOM.findCounterByDigit((i + 1).toString()), findsOneWidget);
      await patrol.pumpAndTrySettle();
    }
  });
}
