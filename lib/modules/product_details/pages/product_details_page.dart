import 'package:flutter/material.dart';

import 'package:shopping_app_prototype/constants/constants.dart';
import 'package:shopping_app_prototype/modules/products/models/product.dart';
import 'package:shopping_app_prototype/utils/utils.dart';
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(LayoutConstants.kPaddingM),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: SizedNetworkImage(
                  imageUrl: product.image,
                  imageWidth: context.screenWidth / 2,
                ),
              ),
              const SizedBox(height: LayoutConstants.kSpaceL),
              Text(
                product.name,
                style: Theme.of(context).textTheme.headline6,
              )
            ],
          ),
        ),
      ),
    );
  }
}
