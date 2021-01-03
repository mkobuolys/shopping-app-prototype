import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:shopping_app_prototype/modules/cart/bloc/cart_bloc.dart';
import 'package:shopping_app_prototype/modules/product_details/widgets/product_details_content.dart';
import 'package:shopping_app_prototype/modules/products/products.dart';
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
      appBar: CustomAppBar(title: 'Details'),
      body: ProductDetailsContent(product: product),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.black,
        label: Text('Add to cart'),
        icon: Icon(Icons.add_shopping_cart),
        onPressed: () =>
            context.read<CartBloc>().add(ProductAdded(product: product)),
      ),
    );
  }
}
