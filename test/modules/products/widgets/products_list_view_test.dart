import 'package:bloc_test/bloc_test.dart';
import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import 'package:shopping_app_prototype/modules/product_details/widgets/product_details_content.dart';
import 'package:shopping_app_prototype/modules/products/products.dart';
import 'package:shopping_app_prototype/widgets/custom_app_bar.dart';

class MockProductsBloc extends MockBloc<ProductsState> implements ProductsBloc {
}

void main() {
  group('ProductsListView', () {
    ProductsBloc productsBloc;
    final products = BuiltList<Product>([
      for (var i = 1; i <= 20; i++)
        Product(
          sku: i,
          name: 'Product $i',
          image: 'image/url/$i',
          regularPrice: 9.99,
          salePrice: 9.99,
          onSale: false,
          description: 'Description $i',
          customerReviewAverage: 4.5,
        )
    ]);

    setUp(() {
      productsBloc = MockProductsBloc();
      when(productsBloc.state).thenReturn(
        ProductsState.loadSuccess(
          products: products,
          total: products.length,
        ),
      );
    });

    tearDown(() {
      productsBloc.close();
    });

    Future<void> _renderProductsListView(
      WidgetTester tester,
      int productsTotal,
    ) {
      return tester.pumpWidget(
        BlocProvider.value(
          value: productsBloc,
          child: MaterialApp(
            home: Scaffold(
              body: ProductsListView(
                products: products,
                productsTotal: productsTotal,
              ),
            ),
          ),
        ),
      );
    }

    testWidgets(
      'should render products list',
      (tester) async {
        final productsTotal = products.length + 1;

        await _renderProductsListView(tester, productsTotal);

        expect(find.byType(ProductCard), findsWidgets);
      },
    );

    testWidgets(
      'should open ProductDetailsPage on ProductCard click',
      (tester) async {
        final productsTotal = products.length + 1;
        final firstProduct = products.first;

        await _renderProductsListView(tester, productsTotal);

        final productCard = find.byWidgetPredicate(
          (widget) => widget is ProductCard && widget.product == firstProduct,
        );

        await tester.tap(productCard);
        await tester.pump(const Duration(seconds: 1));

        expect(
          find.byWidgetPredicate(
            (widget) => widget is CustomAppBar && widget.title == 'Details',
          ),
          findsOneWidget,
        );
        expect(
          find.byWidgetPredicate(
            (widget) =>
                widget is ProductDetailsContent &&
                widget.product == firstProduct,
          ),
          findsOneWidget,
        );
      },
    );

    group('products loading', () {
      group('when bottom of the list is reached', () {
        testWidgets(
          'should load more products',
          (tester) async {
            final productsTotal = products.length + 1;

            await _renderProductsListView(tester, productsTotal);

            await tester.drag(
              find.byType(ListView),
              Offset(0.0, -100.0 * products.length),
            );
            await tester.pump();

            verify(productsBloc.add(ProductsLoadStarted())).called(1);
          },
        );

        testWidgets(
          'should not load more products when all products are already loaded',
          (tester) async {
            final productsTotal = products.length;

            await _renderProductsListView(tester, productsTotal);

            await tester.drag(
              find.byType(ListView),
              Offset(0.0, -100.0 * products.length),
            );
            await tester.pump();

            verifyNever(productsBloc.add(ProductsLoadStarted()));
          },
        );
      });

      testWidgets(
        'should refresh products on pull-to-refresh',
        (tester) async {
          final productsTotal = products.length + 1;

          await _renderProductsListView(tester, productsTotal);

          await tester.fling(
            find.byType(ListView),
            Offset(0.0, 300.0),
            1000.0,
          );
          await tester.pump(
            const Duration(seconds: 1),
          ); // finish the scroll animation
          await tester.pump(
            const Duration(seconds: 1),
          ); // finish the indicator settle animation
          await tester.pump(
            const Duration(seconds: 1),
          ); // finish the indicator hide animation

          verify(productsBloc.add(ProductsLoadStarted(isRefresh: true)))
              .called(1);
        },
      );
    });
  });
}
