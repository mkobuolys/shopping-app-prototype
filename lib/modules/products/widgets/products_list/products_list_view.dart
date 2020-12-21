import 'package:flutter/material.dart';

import 'package:best_buy_api/best_buy_api.dart';

class ProductsListView extends StatelessWidget {
  const ProductsListView({
    @required this.products,
  });

  final List<Product> products;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: products.map((product) => Text(product.name)).toList(),
    );
  }
}
