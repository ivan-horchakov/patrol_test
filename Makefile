clean:
	flutter clean
	flutter pub get

cleanup:
	flutter clean
	flutter packages pub get
	dart run build_runner build --delete-conflicting-outputs

# Run ALL IMPLEMENTED tests from "integration_test/test_sets/all_test.dart"
# on connected Android emulator or real device:
all:
	patrol test --target=integration_test/test_sets/all_test.dart \
		--package-name=com.example.patrol_testing --show-flutter-logs --no-hide-test-steps \
		--dart-define=SKIPPING_TESTS=true --coverage
