import 'package:flutter/material.dart';

import 'package:best_buy_api/best_buy_api.dart';
import 'package:cached_network_image/cached_network_image.dart';

import 'package:shopping_app_prototype/constants/constants.dart';
import 'package:shopping_app_prototype/modules/products/widgets/product_price.dart';
import 'package:shopping_app_prototype/widgets/widgets.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    @required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(LayoutConstants.kMarginM),
      child: Padding(
        padding: const EdgeInsets.all(LayoutConstants.kPaddingM),
        child: Row(
          children: [
            SizedBox(
              width: 88.0,
              child: AspectRatio(
                aspectRatio: 1.0,
                child: CachedNetworkImage(
                  imageUrl: product.image,
                  placeholder: (_, __) => CircularLoader(),
                  errorWidget: (context, url, error) => Icon(Icons.error),
                ),
              ),
            ),
            const SizedBox(width: LayoutConstants.kSpaceL),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.name,
                    style: TextStyle(color: Colors.black, fontSize: 16),
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
    );
  }
}
