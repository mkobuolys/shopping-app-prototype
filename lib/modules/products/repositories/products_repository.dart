import 'package:best_buy_api/best_buy_api.dart';

class ProductsRepository {
  ProductsRepository({
    BestBuyApiClient client,
  }) : _client = client ?? BestBuyApiClient();

  final BestBuyApiClient _client;

  Future<List<Product>> getProducts() async {
    return _client.getPromotedProducts();
  }
}
