import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import 'package:shopping_app_prototype/modules/cart/bloc/cart_bloc.dart';
import 'package:shopping_app_prototype/modules/product_details/product_details.dart';
import 'package:shopping_app_prototype/modules/products/models/product.dart';
import 'package:shopping_app_prototype/widgets/custom_app_bar.dart';

class MockCartBloc extends MockBloc<CartState> implements CartBloc {}

void main() {
  group('ProductDetailsPage', () {
    CartBloc bloc;
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

    setUp(() {
      bloc = MockCartBloc();
      when(bloc.state).thenReturn(CartState.initial());
    });

    tearDown(() {
      bloc.close();
    });

    testWidgets(
      'should render product details page',
      (tester) async {
        await tester.pumpWidget(
          BlocProvider.value(
            value: bloc,
            child: MaterialApp(
              home: ProductDetailsPage(product: product),
            ),
          ),
        );

        expect(find.byType(ProductDetailsContent), findsOneWidget);
        expect(
          find.byWidgetPredicate(
            (widget) => widget is CustomAppBar && widget.title == 'Details',
          ),
          findsOneWidget,
        );
        expect(
          find.byWidgetPredicate(
            (widget) =>
                widget is Scaffold &&
                widget.floatingActionButtonLocation ==
                    FloatingActionButtonLocation.centerFloat,
          ),
          findsOneWidget,
        );
        expect(
          find.widgetWithIcon(FloatingActionButton, Icons.add_shopping_cart),
          findsOneWidget,
        );
      },
    );

    testWidgets(
      "should add product to cart on 'Add to cart' click",
      (tester) async {
        await tester.pumpWidget(
          BlocProvider.value(
            value: bloc,
            child: MaterialApp(
              home: ProductDetailsPage(product: product),
            ),
          ),
        );

        final button = find.widgetWithIcon(
          FloatingActionButton,
          Icons.add_shopping_cart,
        );

        await tester.pump();
        await tester.tap(button);

        verify(bloc.add(ProductAdded(product: product))).called(1);
      },
    );
  });
}
