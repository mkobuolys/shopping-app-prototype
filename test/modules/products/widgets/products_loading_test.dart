import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:shopping_app_prototype/modules/products/widgets/products_loading.dart';
import 'package:shopping_app_prototype/widgets/circular_loader.dart';

void main() {
  group('ProductsLoading', () {
    testWidgets(
      'should render loader',
      (tester) async {
        await tester.pumpWidget(
          MaterialApp(
            home: Scaffold(
              body: ProductsLoading(),
            ),
          ),
        );

        expect(
          find.byWidgetPredicate(
            (widget) => widget is Center && widget.child is CircularLoader,
          ),
          findsOneWidget,
        );
      },
    );
  });
}
