import 'package:flutter/material.dart';

import 'package:built_collection/built_collection.dart';

import 'package:shopping_app_prototype/constants/constants.dart';
import 'package:shopping_app_prototype/modules/cart/models/cart_item.dart';
import 'package:shopping_app_prototype/modules/cart/widgets/cart_list_item.dart';

class CartListView extends StatelessWidget {
  const CartListView({
    @required this.cartItems,
  });

  final BuiltList<CartItem> cartItems;

  double get totalPrice => cartItems.fold(
        0,
        (sum, item) => sum + item.count * item.product.salePrice,
      );

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(vertical: LayoutConstants.paddingL),
      child: Column(
        children: [
          Text(
            '${cartItems.length} products',
            style: Theme.of(context).textTheme.subtitle1,
          ),
          const SizedBox(height: LayoutConstants.spaceS),
          for (final item in cartItems) CartListItem(item: item),
          const SizedBox(height: LayoutConstants.spaceL),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: LayoutConstants.paddingL,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Total: \$${totalPrice.toStringAsFixed(2)}',
                  style: Theme.of(context).textTheme.subtitle1,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
