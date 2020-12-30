import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:shopping_app_prototype/modules/products/widgets/product_price.dart';

void main() {
  group('ProductPrice', () {
    const regularPrice = 19.99;
    const salePrice = 15.99;

    testWidgets(
      'should render regular and sale prices when onSale is true',
      (tester) async {
        await tester.pumpWidget(
          MaterialApp(
            home: Scaffold(
              body: ProductPrice(
                onSale: true,
                regularPrice: regularPrice,
                salePrice: salePrice,
              ),
            ),
          ),
        );

        expect(find.text('\$$regularPrice \$$salePrice'), findsOneWidget);
      },
    );

    testWidgets(
      'should render regular price only when onSale is false',
      (tester) async {
        await tester.pumpWidget(
          MaterialApp(
            home: Scaffold(
              body: ProductPrice(
                onSale: false,
                regularPrice: regularPrice,
                salePrice: salePrice,
              ),
            ),
          ),
        );

        expect(find.text('\$$regularPrice'), findsOneWidget);
      },
    );
  });
}
