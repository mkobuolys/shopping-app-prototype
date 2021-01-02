import 'package:bloc_test/bloc_test.dart';
import 'package:built_collection/built_collection.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import 'package:shopping_app_prototype/modules/products/products.dart';

class MockProductsRepository extends Mock implements ProductsRepository {}

void main() {
  group('ProductsBloc', () {
    const waitDuration = Duration(milliseconds: 600);
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
    final products = [product1, product2].build();

    ProductsRepository productsRepository;
    ProductsBloc productsBloc;

    setUp(() {
      productsRepository = MockProductsRepository();
      when(productsRepository.getProductsData(any)).thenAnswer(
        (_) async => ProductsData(
          products: products.toList(),
          total: products.length,
        ),
      );
      productsBloc = ProductsBloc(repository: productsRepository);
    });

    tearDown(() {
      productsBloc.close();
    });

    test('should set initial state to ProductsInitial', () {
      expect(productsBloc.state, ProductsState.initial());
    });

    blocTest<ProductsBloc, ProductsState>(
      'should debounce events',
      build: () => ProductsBloc(repository: productsRepository),
      act: (bloc) => bloc
        ..add(
          const ProductsEvent.loadStarted(isRefresh: true),
        )
        ..add(
          const ProductsEvent.loadStarted(isRefresh: false),
        )
        ..add(
          const ProductsEvent.loadStarted(isRefresh: true),
        ),
      wait: waitDuration,
      expect: <ProductsState>[
        ProductsState.initial(),
        ProductsState.loadSuccess(products: products, total: products.length),
      ],
    );

    group('ProductsInitialLoadStarted', () {
      blocTest<ProductsBloc, ProductsState>(
        'should not load data when the current state is ProductsLoadSuccess',
        build: () => ProductsBloc(repository: productsRepository),
        act: (bloc) => bloc.add(
          const ProductsEvent.initialLoadStarted(),
        ),
        seed: ProductsState.loadSuccess(
          products: products,
          total: products.length,
        ),
        wait: waitDuration,
        expect: <ProductsState>[],
      );

      blocTest<ProductsBloc, ProductsState>(
        'should load initial data',
        build: () => ProductsBloc(repository: productsRepository),
        act: (bloc) => bloc.add(
          const ProductsEvent.initialLoadStarted(),
        ),
        seed: ProductsState.loadFailure(),
        wait: waitDuration,
        expect: <ProductsState>[
          ProductsState.initial(),
          ProductsState.loadSuccess(
            products: products,
            total: products.length,
          ),
        ],
      );
    });

    group('ProductsLoadStarted', () {
      blocTest<ProductsBloc, ProductsState>(
        'should set state to ProductsLoadFailure on API exception',
        build: () {
          when(productsRepository.getProductsData(any))
              .thenThrow(Exception('Error'));

          return ProductsBloc(repository: productsRepository);
        },
        act: (bloc) => bloc.add(
          const ProductsEvent.loadStarted(isRefresh: false),
        ),
        wait: waitDuration,
        expect: const <ProductsState>[
          ProductsState.loadFailure(),
        ],
      );

      blocTest<ProductsBloc, ProductsState>(
        'should refresh products list when isRefresh is true',
        build: () {
          when(productsRepository.getProductsData(any)).thenAnswer(
            (_) async => ProductsData(
              products: [product2],
              total: 1,
            ),
          );

          return ProductsBloc(repository: productsRepository);
        },
        act: (bloc) => bloc.add(
          const ProductsEvent.loadStarted(isRefresh: true),
        ),
        seed: ProductsState.loadSuccess(
          products: [product1].build(),
          total: 1,
        ),
        wait: waitDuration,
        expect: <ProductsState>[
          ProductsState.initial(),
          ProductsState.loadSuccess(
            products: [product2].build(),
            total: 1,
          ),
        ],
      );

      blocTest<ProductsBloc, ProductsState>(
        'should append to products list when isRefresh is false',
        build: () {
          when(productsRepository.getProductsData(any)).thenAnswer(
            (_) async => ProductsData(
              products: [product2],
              total: 2,
            ),
          );

          return ProductsBloc(repository: productsRepository);
        },
        act: (bloc) => bloc.add(
          const ProductsEvent.loadStarted(isRefresh: false),
        ),
        seed: ProductsState.loadSuccess(
          products: [product1].build(),
          total: 1,
        ),
        wait: waitDuration,
        expect: <ProductsState>[
          ProductsState.loadSuccess(
            products: products,
            total: products.length,
          ),
        ],
      );
    });

    group('HydratedMixin functions', () {
      final stateJson = <String, dynamic>{
        'products': products.map((p) => p.toJson()).toList(),
        'total': products.length,
      };

      group('fromJson()', () {
        test('should return ProductsLoadSuccess state', () {
          final state = productsBloc.fromJson(stateJson);

          expect(
            state,
            ProductsState.loadSuccess(
              products: products,
              total: products.length,
            ),
          );
        });
      });

      group('toJson()', () {
        test('should map ProductsLoadSuccess state', () {
          final state = ProductsState.loadSuccess(
            products: products,
            total: products.length,
          );

          final json = productsBloc.toJson(state);

          expect(json, <String, dynamic>{
            'products': products.toList(),
            'total': products.length,
          });
        });

        test('should return null on non-ProductsLoadSuccess state', () {
          final state = ProductsState.initial();

          final json = productsBloc.toJson(state);

          expect(json, isNull);
        });
      });
    });
  });
}
