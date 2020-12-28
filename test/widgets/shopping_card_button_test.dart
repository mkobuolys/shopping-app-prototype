import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:shopping_app_prototype/widgets/shopping_card_button.dart';

void main() {
  group('ShoppingCardButton', () {
    testWidgets(
      'should render shopping cart button',
      (tester) async {
        await tester.pumpWidget(
          MaterialApp(
            home: Scaffold(
              body: ShoppingCardButton(),
            ),
          ),
        );

        expect(
          find.widgetWithIcon(IconButton, Icons.shopping_cart),
          findsOneWidget,
        );
      },
    );
  });
}
