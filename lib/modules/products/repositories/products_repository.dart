import 'package:best_buy_api/best_buy_api.dart';

class ProductsRepository {
  ProductsRepository({
    BestBuyApiClient client,
  }) : _client = client ?? BestBuyApiClient();

  static const _defaultLimit = 20;

  final BestBuyApiClient _client;

  Future<ProductsResponse> getProductsData(int from,
      [int limit = _defaultLimit]) async {
    final page = from ~/ limit + 1;

    return _client.getPromotedProducts(page, limit);
  }
}
