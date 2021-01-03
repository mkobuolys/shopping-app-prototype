import 'package:bloc_test/bloc_test.dart';
import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import 'package:shopping_app_prototype/modules/cart/cart.dart';
import 'package:shopping_app_prototype/modules/products/models/product.dart';
import 'package:shopping_app_prototype/widgets/custom_app_bar.dart';

class MockCartBloc extends MockBloc<CartState> implements CartBloc {}

void main() {
  group('CartPage', () {
    CartBloc cartBloc;

    setUp(() {
      cartBloc = MockCartBloc();
    });

    tearDown(() {
      cartBloc.close();
    });

    void _expectCustomAppBarExists() {
      expect(
        find.byWidgetPredicate(
          (widget) =>
              widget is CustomAppBar &&
              widget.title == 'Cart' &&
              widget.showShoppingCartButton == false,
        ),
        findsOneWidget,
      );
    }

    Future<void> _renderCartPage(WidgetTester tester) {
      return tester.pumpWidget(
        BlocProvider.value(
          value: cartBloc,
          child: MaterialApp(
            home: CartPage(),
          ),
        ),
      );
    }

    testWidgets(
      'should render CartEmpty widget when shopping cart is empty',
      (tester) async {
        when(cartBloc.state).thenReturn(CartState.initial());

        await _renderCartPage(tester);

        _expectCustomAppBarExists();
        expect(find.byType(CartEmpty), findsOneWidget);
      },
    );

    testWidgets(
      'should render CartListView widget when shopping cart contains products',
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
        const cartItem = CartItem(count: 1, product: product);

        when(cartBloc.state).thenReturn(
          CartState(items: <CartItem>[cartItem].build()),
        );

        await _renderCartPage(tester);

        _expectCustomAppBarExists();
        expect(find.byType(CartListView), findsOneWidget);
      },
    );
  });
}
