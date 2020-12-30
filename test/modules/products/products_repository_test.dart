import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import 'package:best_buy_api/best_buy_api.dart';

import 'package:shopping_app_prototype/modules/products/models/product.dart';
import 'package:shopping_app_prototype/modules/products/repositories/products_repository.dart';

class MockBestBuyApiClient extends Mock implements BestBuyApiClient {}

void main() {
  BestBuyApiClient apiClient;
  ProductsRepository repository;

  setUp(() {
    apiClient = MockBestBuyApiClient();
    repository = ProductsRepository(client: apiClient);
  });

  group('ProductsRepository', () {
    group('constructor', () {
      test('should be initialised without BestBuyClient', () {
        expect(ProductsRepository(), isNotNull);
      });
    });

    group('getProductsData()', () {
      test('should calculate page parameter value correctly', () async {
        when(apiClient.getPromotedProducts(any, any)).thenAnswer(
          (_) async => ProductsResponse(products: [], total: 0),
        );

        await repository.getProductsData(81, 20);

        verify(apiClient.getPromotedProducts(5, 20)).called(1);
      });

      test('should map products data correctly', () async {
        final products = <BestBuyProduct>[
          BestBuyProduct(
            sku: 1,
            name: 'Product 1',
            image: 'image/url/1',
            regularPrice: 9.99,
            salePrice: 9.99,
            onSale: false,
            shortDescription: 'a.',
            description: 'bb.',
            customerReviewAverage: 4.5,
          ),
          BestBuyProduct(
            sku: 2,
            name: 'Product 2',
            image: 'image/url/2',
            regularPrice: 19.99,
            salePrice: 15.99,
            onSale: true,
            longDescription: 'ccc.',
          ),
          BestBuyProduct(
            sku: 2,
            name: 'Product 2',
            image: 'image/url/2',
            regularPrice: 19.99,
            salePrice: 15.99,
            onSale: true,
            shortDescription: 'a.',
            plot: 'dd.',
          ),
        ];

        when(apiClient.getPromotedProducts(any, any)).thenAnswer(
          (_) async => ProductsResponse(
            products: products,
            total: products.length,
          ),
        );

        final productsData = await repository.getProductsData(81, 20);

        expect(productsData.products, <Product>[
          Product(
            sku: 1,
            name: 'Product 1',
            image: 'image/url/1',
            regularPrice: 9.99,
            salePrice: 9.99,
            onSale: false,
            description: 'a.\n\nbb.',
            customerReviewAverage: 4.5,
          ),
          Product(
            sku: 2,
            name: 'Product 2',
            image: 'image/url/2',
            regularPrice: 19.99,
            salePrice: 15.99,
            onSale: true,
            description: 'ccc.',
          ),
          Product(
            sku: 2,
            name: 'Product 2',
            image: 'image/url/2',
            regularPrice: 19.99,
            salePrice: 15.99,
            onSale: true,
            description: 'a.\n\ndd.',
          ),
        ]);
        expect(productsData.total, products.length);
      });
    });
  });
}
