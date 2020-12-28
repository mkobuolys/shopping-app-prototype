import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import 'package:shopping_app_prototype/config/app_router.dart';
import 'package:shopping_app_prototype/modules/product_details/pages/product_details_page.dart';
import 'package:shopping_app_prototype/modules/products/bloc/products_bloc.dart';
import 'package:shopping_app_prototype/modules/products/models/product.dart';
import 'package:shopping_app_prototype/modules/products/pages/products_page.dart';

class MockProductsBloc extends MockBloc<ProductsState> implements ProductsBloc {
}

void main() {
  group('AppRouter', () {
    ProductsBloc bloc;

    setUp(() {
      bloc = MockProductsBloc();
      when(bloc.state).thenReturn(const ProductsState.initial());
    });

    tearDown(() {
      bloc.close();
    });

    testWidgets(
      'should return ProductsPage on /products route',
      (tester) async {
        final settings = RouteSettings(name: ProductsPage.route);
        final route = AppRouter.generateRoute(settings) as MaterialPageRoute;

        await tester.pumpWidget(
          BlocProvider.value(
            value: bloc,
            child: MaterialApp(
              home: Scaffold(
                body: LayoutBuilder(
                  builder: (context, _) => route.buildContent(context),
                ),
              ),
            ),
          ),
        );

        expect(find.byType(ProductsPage), findsOneWidget);
      },
    );

    testWidgets(
      'should return ProductDetailsPage on /product-details route',
      (tester) async {
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
        const settings = RouteSettings(
          name: ProductDetailsPage.route,
          arguments: <String, dynamic>{'product': product},
        );
        final route = AppRouter.generateRoute(settings) as MaterialPageRoute;

        await tester.pumpWidget(
          BlocProvider.value(
            value: bloc,
            child: MaterialApp(
              home: Scaffold(
                body: LayoutBuilder(
                  builder: (context, _) => route.buildContent(context),
                ),
              ),
            ),
          ),
        );

        expect(
          find.byWidgetPredicate(
            (widget) =>
                widget is ProductDetailsPage && widget.product == product,
          ),
          findsOneWidget,
        );
      },
    );

    testWidgets(
      'should return ProductsPage as default',
      (tester) async {
        final settings = RouteSettings();
        final route = AppRouter.generateRoute(settings) as MaterialPageRoute;

        await tester.pumpWidget(
          BlocProvider.value(
            value: bloc,
            child: MaterialApp(
              home: Scaffold(
                body: LayoutBuilder(
                  builder: (context, _) => route.buildContent(context),
                ),
              ),
            ),
          ),
        );

        expect(find.byType(ProductsPage), findsOneWidget);
      },
    );
  });
}
