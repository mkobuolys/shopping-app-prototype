import 'package:flutter/material.dart';

class ProductPrice extends StatelessWidget {
  const ProductPrice({
    @required this.onSale,
    @required this.regularPrice,
    @required this.salePrice,
  });

  final bool onSale;
  final double regularPrice;
  final double salePrice;

  @override
  Widget build(BuildContext context) {
    return onSale
        ? Text.rich(
            TextSpan(
              text: '\$$regularPrice',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                decoration: TextDecoration.lineThrough,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: ' \$$salePrice',
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
          )
        : Text(
            '\$$salePrice',
            style: TextStyle(fontWeight: FontWeight.w600),
          );
  }
}
