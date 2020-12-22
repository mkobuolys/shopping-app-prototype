import 'package:flutter/material.dart';

import 'package:best_buy_api/best_buy_api.dart';
import 'package:shopping_app_prototype/modules/products/widgets/products_list/product_card.dart';

class ProductsListView extends StatelessWidget {
  const ProductsListView({
    @required this.products,
  });

  final List<Product> products;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (_, i) => ProductCard(product: products[i]),
      itemCount: products.length,
    );
  }
}
