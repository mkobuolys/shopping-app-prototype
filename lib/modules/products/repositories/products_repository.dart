import 'package:meta/meta.dart';

import 'package:best_buy_api/best_buy_api.dart';

class ProductsRepository {
  ProductsRepository({
    @required this.client,
  });

  final BestBuyApiClient client;

  Future<List<Product>> getProducts() async {
    return client.getProducts();
  }
}
