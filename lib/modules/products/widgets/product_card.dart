import 'package:flutter/material.dart';

import 'package:shopping_app_prototype/constants/constants.dart';
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
    return Material(
      elevation: 1.0,
      child: Container(
        padding: const EdgeInsets.all(LayoutConstants.paddingM),
        color: Colors.white,
        child: Row(
          children: [
            SizedNetworkImage(
              imageUrl: product.image,
              imageWidth: 88.0,
            ),
            const SizedBox(width: LayoutConstants.spaceL),
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
                  const SizedBox(height: LayoutConstants.spaceM),
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
    );
  }
}
