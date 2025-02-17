import '../tests/eighth_test/eighth_test.dart' as eighth_test;
import '../tests/fifth_test/fifth_test.dart' as fifth_test;
import '../tests/first_test/first_test.dart' as first_test;
import '../tests/fourth_test/fourth_test.dart' as fourth_test;
import '../tests/ninth_test/ninth_test.dart' as ninth_test;
import '../tests/second_test/second_test.dart' as second_test;
import '../tests/seventh_test/seventh_test.dart' as seventh_test;
import '../tests/sixth_test/sixth_test.dart' as sixth_test;
import '../tests/third_test/third_test.dart' as third_test;

void main() {
  /// IMPORTANT: on first ever run you need to activate patrol_cli
  /// by this command in terminal:
  /// dart pub global activate patrol_cli

  /// Execute this Test Set on connected Android emulator or real device
  /// by this command in terminal:
  /// make all
  // [0001] First Test
  first_test.main();
  // [0002] Second Test
  second_test.main();
  // [0003] Third Test
  third_test.main();
  // [0004] Fourth Test
  fourth_test.main(); // SKIPPING IT
  // [0005] Fifth Test
  fifth_test.main(); // SKIPPING IT
  // [0006] Sixth Test
  sixth_test.main(); // SKIPPING IT
  // [0007] Seventh Test
  seventh_test.main();
  // [0008] Eighth Test
  eighth_test.main();
  // [0009] Ninth Test
  ninth_test.main();
}
