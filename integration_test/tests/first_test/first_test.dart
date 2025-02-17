import 'package:flutter_test/flutter_test.dart';
import 'package:patrol/patrol.dart';

import '../../extensions/extensions.dart';
import '../../pages/home_page_pom.dart';

void main() {
  patrolTest('[0001] First Test', (patrol) async {
    //Run the app
    await runMobileApp(patrol);

    //Check all widgets
    await patrol.waitUntilVisible(MyHomePagePOM.appBarTitleByKeyFinder);
    expect(MyHomePagePOM.appBarTitleByKeyFinder, findsOneWidget);
    expect(MyHomePagePOM.pushedInfoTextByKeyFinder, findsOneWidget);
    expect(MyHomePagePOM.zeroInitialCounterByKeyFinder, findsOneWidget);
    expect(MyHomePagePOM.incrementCounterFabByKeyFinder, findsOneWidget);

    //Tap once on the Increment button
    await patrol.tap(MyHomePagePOM.incrementCounterFabByKeyFinder);

    //Check that Increment Counter reflects tap
    await patrol.waitUntilVisible(MyHomePagePOM.findCounterByDigit('1'));
    expect(MyHomePagePOM.findCounterByDigit('1'), findsOneWidget);
  });
}
