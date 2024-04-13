import 'package:flutter_test/flutter_test.dart';
import 'package:rammandir2/app/app.locator.dart';

import '../helpers/test_helpers.dart';

void main() {
  group('RmhomeViewModel Tests -', () {
    setUp(() => registerServices());
    tearDown(() => locator.reset());
  });
}
