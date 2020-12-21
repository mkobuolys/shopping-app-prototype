import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

import 'models/models.dart';

class GetProductsRequestFailure implements Exception {}

class BestBuyApiClient {
  BestBuyApiClient({http.Client httpClient})
      : _httpClient = httpClient ?? http.Client();

  static const _baseUrl = 'api.bestbuy.com';
  static const _defaultParameters = <String, String>{
    'apiKey': String.fromEnvironment('BEST_BUY_API_KEY'),
    'format': 'json'
  };

  final http.Client _httpClient;

  Future<List<Product>> getProducts() async {
    final request = Uri.https(
      _baseUrl,
      '/v1/products(onSale=true)',
      _defaultParameters,
    );
    final response = await _httpClient.get(request);

    if (response.statusCode != HttpStatus.ok) {
      throw GetProductsRequestFailure();
    }

    final productsJson = jsonDecode(response.body)['products'] as List<dynamic>;

    return productsJson
        .map((productJson) => Product.fromJson(productJson))
        .toList();
  }
}