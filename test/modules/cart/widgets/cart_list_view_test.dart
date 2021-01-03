import 'package:bloc_test/bloc_test.dart';
import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import 'package:shopping_app_prototype/modules/cart/cart.dart';
import 'package:shopping_app_prototype/modules/products/models/product.dart';

class MockCartBloc extends MockBloc<CartState> implements CartBloc {}

void main() {
  group('CartListView', () {
    CartBloc cartBloc;

    setUp(() {
      cartBloc = MockCartBloc();
      when(cartBloc.state).thenReturn(CartState.initial());
    });

    tearDown(() {
      cartBloc.close();
    });

    testWidgets(
      'should render cart list view',
      (tester) async {
        const product1 = Product(
          sku: 1,
          name: 'Product 1',
          image: 'image/url/1',
          regularPrice: 9.99,
          salePrice: 5.00,
          onSale: false,
          description:
              'Nisi id dolore aute adipisicing magna non labore adipisicing.',
          customerReviewAverage: 4.5,
        );
        const product2 = Product(
          sku: 2,
          name: 'Product 2',
          image: 'image/url/2',
          regularPrice: 19.99,
          salePrice: 10.45,
          onSale: true,
          description:
              'Tempor sint aliqua quis ullamco irure sit dolore labore sunt proident fugiat. Ad adipisicing anim reprehenderit occaecat elit aliqua.',
        );
        final cartItems = <CartItem>[
          CartItem(count: 1, product: product1),
          CartItem(count: 2, product: product2),
        ].build();

        await tester.pumpWidget(
          BlocProvider.value(
            value: cartBloc,
            child: MaterialApp(
              home: Scaffold(
                body: CartListView(
                  cartItems: cartItems,
                ),
              ),
            ),
          ),
        );

        expect(find.text('2 products'), findsOneWidget);
        expect(find.byType(CartListItem), findsNWidgets(2));
        expect(find.text('Total: \$25.90'), findsOneWidget);
      },
    );
  });
}
