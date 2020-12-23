import 'package:best_buy_api/best_buy_api.dart';

import 'package:shopping_app_prototype/modules/products/models/models.dart';

class ProductsRepository {
  ProductsRepository({
    BestBuyApiClient client,
  }) : _client = client ?? BestBuyApiClient();

  static const _defaultLimit = 20;

  final BestBuyApiClient _client;

  Future<ProductsData> getProductsData(int from,
      [int limit = _defaultLimit]) async {
    final page = from ~/ limit + 1;
    final response = await _client.getPromotedProducts(page, limit);

    return _mapProductsResponse(response);
  }

  ProductsData _mapProductsResponse(ProductsResponse response) {
    return ProductsData(
      products: response.products.map(_mapBestBuyProduct).toList(),
      total: response.total,
    );
  }

  Product _mapBestBuyProduct(BestBuyProduct product) {
    final description = (product.shortDescription != null
            ? '${product.shortDescription}\n\n'
            : '') +
        '${product.description ?? product.longDescription ?? product.plot}';

    return Product(
      sku: product.sku,
      name: product.name,
      image: product.image,
      regularPrice: product.regularPrice,
      salePrice: product.salePrice,
      onSale: product.onSale,
      description: description,
      customerReviewAverage: product.customerReviewAverage,
    );
  }
}
