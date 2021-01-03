import 'package:bloc_test/bloc_test.dart';
import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import 'package:shopping_app_prototype/modules/cart/cart.dart';
import 'package:shopping_app_prototype/modules/products/products.dart';

class MockCartBloc extends MockBloc<CartState> implements CartBloc {}

void main() {
  group('CartListItem', () {
    CartBloc cartBloc;
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

    setUp(() {
      cartBloc = MockCartBloc();
      when(cartBloc.state).thenReturn(
        CartState(items: <CartItem>[cartItem].build()),
      );
    });

    tearDown(() {
      cartBloc.close();
    });

    Future<void> _renderCartListItem(WidgetTester tester) {
      return tester.pumpWidget(
        BlocProvider.value(
          value: cartBloc,
          child: MaterialApp(
            home: Scaffold(
              body: CartListItem(
                item: cartItem,
              ),
            ),
          ),
        ),
      );
    }

    testWidgets(
      'should render cart list item',
      (tester) async {
        await _renderCartListItem(tester);

        expect(find.byType(ProductCard), findsOneWidget);
        expect(find.widgetWithIcon(IconButton, Icons.close), findsOneWidget);
        expect(find.widgetWithIcon(IconButton, Icons.add), findsOneWidget);
        expect(find.widgetWithIcon(IconButton, Icons.remove), findsOneWidget);
      },
    );

    group('cart list item actions', () {
      testWidgets(
        'should remove cart item',
        (tester) async {
          await _renderCartListItem(tester);

          final button = find.widgetWithIcon(IconButton, Icons.close);

          await tester.pump();
          await tester.tap(button);

          verify(cartBloc.add(CartItemRemoved(item: cartItem))).called(1);
        },
      );

      testWidgets(
        'should increase cart item count',
        (tester) async {
          await _renderCartListItem(tester);

          final button = find.widgetWithIcon(IconButton, Icons.add);

          await tester.pump();
          await tester.tap(button);

          verify(cartBloc.add(CartItemCountIncreased(item: cartItem)))
              .called(1);
        },
      );

      testWidgets(
        'should decrease cart item count',
        (tester) async {
          await _renderCartListItem(tester);

          final button = find.widgetWithIcon(IconButton, Icons.remove);

          await tester.pump();
          await tester.tap(button);

          verify(cartBloc.add(CartItemCountDecreased(item: cartItem)))
              .called(1);
        },
      );
    });
  });
}
