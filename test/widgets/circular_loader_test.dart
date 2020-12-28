import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:shopping_app_prototype/widgets/circular_loader.dart';

void main() {
  group('CircularLoader', () {
    testWidgets(
      'should render loader',
      (tester) async {
        await tester.pumpWidget(
          MaterialApp(
            home: Scaffold(
              body: CircularLoader(),
            ),
          ),
        );

        expect(
          find.byWidgetPredicate(
            (widget) =>
                widget is CircularProgressIndicator &&
                widget.valueColor is AlwaysStoppedAnimation &&
                widget.valueColor.value == Colors.black,
          ),
          findsOneWidget,
        );
      },
    );
  });
}
