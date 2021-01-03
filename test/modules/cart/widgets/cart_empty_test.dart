import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:shopping_app_prototype/modules/cart/widgets/cart_empty.dart';

void main() {
  group('CartEmpty', () {
    testWidgets(
      'should render empty cart widget',
      (tester) async {
        await tester.pumpWidget(
          MaterialApp(
            home: Scaffold(
              body: CartEmpty(),
            ),
          ),
        );

        expect(find.text('Your cart is empty :('), findsOneWidget);
      },
    );
  });
}
