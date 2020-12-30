import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:shopping_app_prototype/modules/product_details/widgets/widgets.dart';
import 'package:shopping_app_prototype/modules/products/models/product.dart';
import 'package:shopping_app_prototype/modules/products/widgets/product_price.dart';
import 'package:shopping_app_prototype/widgets/sized_network_image.dart';

void main() {
  group('ProductDetailsContent', () {
    const product = Product(
      sku: 1,
      name: 'Product 1',
      image: 'image/url/1',
      regularPrice: 9.99,
      salePrice: 9.99,
      onSale: false,
      description:
          'Nisi id dolore aute adipisicing magna non labore adipisicing.',
    );

    testWidgets(
      'should render product details content',
      (tester) async {
        await tester.pumpWidget(
          MaterialApp(
            home: Scaffold(
              body: ProductDetailsContent(product: product),
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
        expect(find.text(product.description), findsOneWidget);
      },
    );

    testWidgets(
      'should render customer review average widget',
      (tester) async {
        final productWithCustomerReviewAverage = product.copyWith(
          customerReviewAverage: 4.5,
        );

        await tester.pumpWidget(
          MaterialApp(
            home: Scaffold(
              body: ProductDetailsContent(
                product: productWithCustomerReviewAverage,
              ),
            ),
          ),
        );

        expect(
          find.byWidgetPredicate(
            (widget) =>
                widget is CustomerReviewAverage &&
                widget.average ==
                    productWithCustomerReviewAverage.customerReviewAverage,
          ),
          findsOneWidget,
        );
      },
    );
  });
}
