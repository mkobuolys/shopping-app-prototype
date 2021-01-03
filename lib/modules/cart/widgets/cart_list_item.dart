import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:shopping_app_prototype/constants/constants.dart';
import 'package:shopping_app_prototype/modules/cart/bloc/cart_bloc.dart';
import 'package:shopping_app_prototype/modules/cart/models/cart_item.dart';
import 'package:shopping_app_prototype/modules/products/widgets/product_card.dart';

class CartListItem extends StatelessWidget {
  const CartListItem({
    @required this.item,
  });

  final CartItem item;

  @override
  Widget build(BuildContext context) {
    final bloc = context.watch<CartBloc>();

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: LayoutConstants.paddingS),
      child: Row(
        children: [
          IconButton(
            icon: Icon(Icons.close),
            onPressed: () => bloc.add(CartItemRemoved(item: item)),
          ),
          Expanded(
            child: ProductCard(product: item.product),
          ),
          Column(
            children: [
              IconButton(
                icon: Icon(Icons.add),
                onPressed: () => bloc.add(CartItemCountIncreased(item: item)),
              ),
              Text(
                '${item.count}',
                style: Theme.of(context).textTheme.subtitle1,
              ),
              IconButton(
                icon: Icon(Icons.remove),
                onPressed: () => bloc.add(CartItemCountDecreased(item: item)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
