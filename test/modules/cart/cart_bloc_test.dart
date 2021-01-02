import 'package:bloc_test/bloc_test.dart';
import 'package:built_collection/built_collection.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:shopping_app_prototype/modules/cart/cart.dart';
import 'package:shopping_app_prototype/modules/products/models/product.dart';

void main() {
  group('CartBloc', () {
    const product1 = Product(
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
    const product2 = Product(
      sku: 2,
      name: 'Product 2',
      image: 'image/url/2',
      regularPrice: 19.99,
      salePrice: 15.99,
      onSale: true,
      description:
          'Tempor sint aliqua quis ullamco irure sit dolore labore sunt proident fugiat. Ad adipisicing anim reprehenderit occaecat elit aliqua.',
    );
    CartBloc cartBloc;

    setUp(() {
      cartBloc = CartBloc();
    });

    tearDown(() {
      cartBloc.close();
    });

    test('should set initial state', () {
      expect(cartBloc.state, CartState.initial());
    });

    group('ProductAdded', () {
      blocTest<CartBloc, CartState>(
        'should add product to cart',
        build: () => CartBloc(),
        act: (bloc) => bloc.add(const ProductAdded(product: product2)),
        seed: CartState(
          items: [
            const CartItem(count: 1, product: product1),
          ].build(),
        ),
        expect: <CartState>[
          CartState(
            items: [
              const CartItem(count: 1, product: product1),
              const CartItem(count: 1, product: product2),
            ].build(),
          )
        ],
      );

      blocTest<CartBloc, CartState>(
        'should increase count if product exists',
        build: () => CartBloc(),
        act: (bloc) => bloc.add(const ProductAdded(product: product1)),
        seed: CartState(
          items: [
            const CartItem(count: 1, product: product1),
          ].build(),
        ),
        expect: <CartState>[
          CartState(
            items: [
              const CartItem(count: 2, product: product1),
            ].build(),
          )
        ],
      );
    });

    group('CartItemRemoved', () {
      blocTest<CartBloc, CartState>(
        'should remove product from cart',
        build: () => CartBloc(),
        act: (bloc) => bloc.add(
          const CartItemRemoved(
            item: CartItem(count: 1, product: product1),
          ),
        ),
        seed: CartState(
          items: [
            const CartItem(count: 1, product: product1),
            const CartItem(count: 1, product: product2),
          ].build(),
        ),
        expect: <CartState>[
          CartState(
            items: [
              const CartItem(count: 1, product: product2),
            ].build(),
          )
        ],
      );

      blocTest<CartBloc, CartState>(
        'should not mutate state when product does not exist',
        build: () => CartBloc(),
        act: (bloc) => bloc.add(
          const CartItemRemoved(
            item: CartItem(count: 1, product: product1),
          ),
        ),
        seed: CartState(
          items: [
            const CartItem(count: 1, product: product2),
          ].build(),
        ),
        expect: <CartState>[],
      );
    });

    group('CartItemCountIncreased', () {
      blocTest<CartBloc, CartState>(
        'should increase cart item count',
        build: () => CartBloc(),
        act: (bloc) => bloc.add(
          const CartItemCountIncreased(
            item: CartItem(count: 1, product: product1),
          ),
        ),
        seed: CartState(
          items: [
            const CartItem(count: 1, product: product1),
          ].build(),
        ),
        expect: <CartState>[
          CartState(
            items: [
              const CartItem(count: 2, product: product1),
            ].build(),
          )
        ],
      );

      blocTest<CartBloc, CartState>(
        'should not mutate state when product does not exist',
        build: () => CartBloc(),
        act: (bloc) => bloc.add(
          const CartItemCountIncreased(
            item: CartItem(count: 1, product: product2),
          ),
        ),
        seed: CartState(
          items: [
            const CartItem(count: 1, product: product1),
          ].build(),
        ),
        expect: <CartState>[],
      );
    });

    group('CartItemCountDecreased', () {
      blocTest<CartBloc, CartState>(
        'should decrease cart item count',
        build: () => CartBloc(),
        act: (bloc) => bloc.add(
          const CartItemCountDecreased(
            item: CartItem(count: 2, product: product1),
          ),
        ),
        seed: CartState(
          items: [
            const CartItem(count: 2, product: product1),
          ].build(),
        ),
        expect: <CartState>[
          CartState(
            items: [
              const CartItem(count: 1, product: product1),
            ].build(),
          )
        ],
      );

      blocTest<CartBloc, CartState>(
        'should not mutate state when product does not exist',
        build: () => CartBloc(),
        act: (bloc) => bloc.add(
          const CartItemCountDecreased(
            item: CartItem(count: 2, product: product2),
          ),
        ),
        seed: CartState(
          items: [
            const CartItem(count: 1, product: product1),
          ].build(),
        ),
        expect: <CartState>[],
      );

      blocTest<CartBloc, CartState>(
        'should remove item when current product count is 1',
        build: () => CartBloc(),
        act: (bloc) => bloc.add(
          const CartItemCountDecreased(
            item: CartItem(count: 1, product: product1),
          ),
        ),
        seed: CartState(
          items: [
            const CartItem(count: 1, product: product1),
          ].build(),
        ),
        expect: <CartState>[
          CartState(
            items: <CartItem>[].build(),
          )
        ],
      );
    });
  });
}
