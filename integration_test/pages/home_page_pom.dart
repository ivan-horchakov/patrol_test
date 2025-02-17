import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

class MyHomePagePOM {
  static final appBarTitleByKeyFinder = find.byKey(ValueKey('MyHomePage_AppBar_Title'));
  static final pushedInfoTextByKeyFinder = find.byKey(ValueKey('MyHomePage_Pushed_Info'));
  static final zeroInitialCounterByKeyFinder = find.byKey(ValueKey('MyHomePage_Counter_0'));
  static final incrementCounterFabByKeyFinder = find.byKey(
    ValueKey('MyHomePage_FloatingActionButton_incrementCounter'),
  );

  static Finder findCounterByDigit(String pushedDigit) {
    return find.byKey(ValueKey('MyHomePage_Counter_$pushedDigit'));
  }
}
