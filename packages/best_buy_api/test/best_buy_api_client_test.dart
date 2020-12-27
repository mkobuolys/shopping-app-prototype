import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

import 'package:best_buy_api/best_buy_api.dart';

class MockHttpClient extends Mock implements http.Client {}

class MockHttpResponse extends Mock implements http.Response {}

void main() {
  group('BestBuyApiClient', () {
    http.Client httpClient;
    BestBuyApiClient apiClient;

    setUp(() {
      httpClient = MockHttpClient();
      apiClient = BestBuyApiClient(httpClient: httpClient);
    });

    group('constructor', () {
      test('API client should be initialised without HTTP client', () {
        expect(BestBuyApiClient(), isNotNull);
      });
    });

    group('getPromotedProducts()', () {
      final page = 1;
      final pageSize = 20;

      test('should throw Exception when response status code is not 200',
          () async {
        final response = MockHttpResponse();

        when(response.statusCode).thenReturn(HttpStatus.badRequest);
        when(httpClient.get(any)).thenAnswer((_) async => response);

        final fn =
            () async => await apiClient.getPromotedProducts(page, pageSize);

        expect(fn, throwsException);
      });

      test('should call Best Buy API with correct headers', () async {
        final response = MockHttpResponse();

        when(response.statusCode).thenReturn(200);
        when(response.body).thenReturn('{"products":[],"total":0}');
        when(httpClient.get(any)).thenAnswer((_) async => response);

        await apiClient.getPromotedProducts(page, pageSize);

        verify(
          httpClient.get(
            Uri.https(
              'api.bestbuy.com',
              '/v1/products(onSale=true)',
              <String, String>{
                'apiKey': '<ENTER YOUR BEST BUY API KEY HERE>',
                'format': 'json',
                'page': '$page',
                'pageSize': '$pageSize',
              },
            ),
          ),
        ).called(1);
      });

      test('should return promoted products', () async {
        final response = MockHttpResponse();
        final products = <BestBuyProduct>[
          BestBuyProduct(
            sku: 1,
            name: 'Product 1',
            image: 'image/url/1',
            regularPrice: 9.99,
            salePrice: 9.99,
            onSale: false,
            shortDescription:
                'Nisi id dolore aute adipisicing magna non labore adipisicing.',
            customerReviewAverage: 4.5,
          ),
          BestBuyProduct(
            sku: 2,
            name: 'Product 2',
            image: 'image/url/2',
            regularPrice: 19.99,
            salePrice: 15.99,
            onSale: true,
            longDescription:
                'Tempor sint aliqua quis ullamco irure sit dolore labore sunt proident fugiat. Ad adipisicing anim reprehenderit occaecat elit aliqua.',
          ),
        ];
        final productsJson = '''
          {
            "products":${jsonEncode(products)},
            "total":${products.length}
          }
        ''';

        when(response.statusCode).thenReturn(200);
        when(response.body).thenReturn(productsJson);
        when(httpClient.get(any)).thenAnswer((_) async => response);

        final productsResponse =
            await apiClient.getPromotedProducts(page, pageSize);

        expect(
          productsResponse,
          isA<ProductsResponse>()
              .having(
                (response) => response.total,
                'total',
                products.length,
              )
              .having(
                (response) => response.products,
                'products',
                products,
              ),
        );
      });
    });
  });
}
