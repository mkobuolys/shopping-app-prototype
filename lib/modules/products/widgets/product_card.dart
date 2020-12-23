import 'package:flutter/material.dart';

import 'package:shopping_app_prototype/constants/constants.dart';
import 'package:shopping_app_prototype/modules/product_details/product_details.dart';
import 'package:shopping_app_prototype/modules/products/models/product.dart';
import 'package:shopping_app_prototype/modules/products/widgets/widgets.dart';
import 'package:shopping_app_prototype/widgets/widgets.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    @required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
        margin: const EdgeInsets.all(LayoutConstants.kMarginM),
        child: Padding(
          padding: const EdgeInsets.all(LayoutConstants.kPaddingM),
          child: Row(
            children: [
              SizedNetworkImage(
                imageUrl: product.image,
                imageWidth: 88.0,
              ),
              const SizedBox(width: LayoutConstants.kSpaceL),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product.name,
                      style: Theme.of(context).textTheme.subtitle1,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                    ),
                    const SizedBox(height: LayoutConstants.kSpaceM),
                    ProductPrice(
                      onSale: product.onSale,
                      regularPrice: product.regularPrice,
                      salePrice: product.salePrice,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      onTap: () => Navigator.of(context).pushNamed(
        ProductDetailsPage.route,
        arguments: <String, dynamic>{
          'product': product,
        },
      ),
    );
  }
}
