import 'package:flutter/material.dart';

import 'package:best_buy_api/best_buy_api.dart';
import 'package:shopping_app_prototype/widgets/widgets.dart';

class ProductDetailsPage extends StatelessWidget {
  static const String route = '/product-details';

  const ProductDetailsPage({
    @required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(product.name),
        actions: [
          ShoppingCardButton(),
        ],
      ),
      body: Center(
        child: Text('Details'),
      ),
    );
  }
}
