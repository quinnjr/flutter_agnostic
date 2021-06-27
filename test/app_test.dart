import 'dart:io';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_agnostic/src/app.dart';

void main() {
  testWidgets('AgnosticApp builds correctly', (WidgetTester tester) async {
    if (Platform.isAndroid || Platform.isIOS) {
      await tester.pumpWidget(AgnosticApp(title: 'Test App'));

      final titleFinder = find.text('Test App');

      expect(titleFinder, findsOneWidget);
    }
  });
}
