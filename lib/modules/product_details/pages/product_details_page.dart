import 'package:flutter/material.dart';

import 'package:shopping_app_prototype/constants/constants.dart';
import 'package:shopping_app_prototype/modules/products/products.dart';
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
      body: Container(
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
                      padding: const EdgeInsets.all(LayoutConstants.kPaddingL),
                      child: Center(
                        child: SizedNetworkImage(
                          imageUrl: product.image,
                          imageWidth: context.screenWidth / 2,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        padding:
                            const EdgeInsets.all(LayoutConstants.kPaddingL),
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
                            const SizedBox(height: LayoutConstants.kSpaceL),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ProductPrice(
                                  onSale: product.onSale,
                                  regularPrice: product.regularPrice,
                                  salePrice: product.salePrice,
                                ),
                                if (product.customerReviewAverage != null)
                                  Row(
                                    children: [
                                      Text(
                                        '${product.customerReviewAverage}',
                                        style: Theme.of(context)
                                            .textTheme
                                            .subtitle1,
                                      ),
                                      Icon(
                                        Icons.star,
                                        size: 20.0,
                                        color: Colors.yellow,
                                      ),
                                    ],
                                  ),
                              ],
                            ),
                            const SizedBox(height: LayoutConstants.kSpaceL),
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
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.black,
        label: Text('Add to cart'),
        icon: Icon(Icons.add_shopping_cart),
        onPressed: () {},
      ),
    );
  }
}
