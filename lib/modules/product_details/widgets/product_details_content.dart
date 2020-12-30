import 'package:flutter/material.dart';

import 'package:shopping_app_prototype/constants/constants.dart';
import 'package:shopping_app_prototype/modules/product_details/widgets/customer_review_average.dart';
import 'package:shopping_app_prototype/modules/products/products.dart';
import 'package:shopping_app_prototype/utils/utils.dart';
import 'package:shopping_app_prototype/widgets/sized_network_image.dart';

class ProductDetailsContent extends StatelessWidget {
  const ProductDetailsContent({
    @required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: LayoutBuilder(
        builder: (_, constraints) => SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: constraints.maxHeight,
            ),
            child: IntrinsicHeight(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(LayoutConstants.paddingL),
                    child: Center(
                      child: SizedNetworkImage(
                        imageUrl: product.image,
                        imageWidth: context.screenWidth / 2,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(LayoutConstants.paddingL),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(32.0),
                        ),
                        color: Colors.white,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            product.name,
                            style: Theme.of(context).textTheme.headline6,
                            textAlign: TextAlign.justify,
                          ),
                          const SizedBox(height: LayoutConstants.spaceL),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ProductPrice(
                                onSale: product.onSale,
                                regularPrice: product.regularPrice,
                                salePrice: product.salePrice,
                              ),
                              if (product.customerReviewAverage != null)
                                CustomerReviewAverage(
                                  average: product.customerReviewAverage,
                                )
                            ],
                          ),
                          const SizedBox(height: LayoutConstants.spaceL),
                          Text(
                            product.description,
                            style: Theme.of(context).textTheme.bodyText2,
                            textAlign: TextAlign.justify,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
