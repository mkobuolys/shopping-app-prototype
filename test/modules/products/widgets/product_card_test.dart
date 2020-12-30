import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:shopping_app_prototype/modules/products/models/product.dart';
import 'package:shopping_app_prototype/modules/products/widgets/widgets.dart';
import 'package:shopping_app_prototype/widgets/sized_network_image.dart';

void main() {
  group('ProductCard', () {
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
      'should render product card',
      (tester) async {
        await tester.pumpWidget(
          MaterialApp(
            home: Scaffold(
              body: ProductCard(product: product),
            ),
          ),
        );

        expect(
          find.byWidgetPredicate(
            (widget) =>
                widget is SizedNetworkImage && widget.imageUrl == product.image,
          ),
          findsOneWidget,
        );
        expect(find.text(product.name), findsOneWidget);
        expect(
          find.byWidgetPredicate(
            (widget) =>
                widget is ProductPrice &&
                widget.onSale == product.onSale &&
                widget.regularPrice == product.regularPrice &&
                widget.salePrice == product.salePrice,
          ),
          findsOneWidget,
        );
      },
    );
  });
}
