import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:shopping_app_prototype/modules/product_details/product_details.dart';
import 'package:shopping_app_prototype/modules/products/models/product.dart';
import 'package:shopping_app_prototype/widgets/custom_app_bar.dart';

void main() {
  group('ProductDetailsPage', () {
    const product = Product(
      sku: 1,
      name: 'Product 1',
      image: 'image/url/1',
      regularPrice: 9.99,
      salePrice: 9.99,
      onSale: false,
      description:
          'Nisi id dolore aute adipisicing magna non labore adipisicing.',
      customerReviewAverage: 4.5,
    );

    testWidgets(
      'should render product details page',
      (tester) async {
        await tester.pumpWidget(
          MaterialApp(
            home: ProductDetailsPage(product: product),
          ),
        );

        expect(
          find.byWidgetPredicate(
            (widget) => widget is CustomAppBar && widget.title == 'Details',
          ),
          findsOneWidget,
        );
        expect(
          find.byType(ProductDetailsContent),
          findsOneWidget,
        );
        expect(
          find.widgetWithIcon(FloatingActionButton, Icons.add_shopping_cart),
          findsOneWidget,
        );
      },
    );
  });
}
