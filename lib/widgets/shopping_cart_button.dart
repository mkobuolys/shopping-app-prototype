import 'package:flutter/material.dart';

import 'package:badges/badges.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:shopping_app_prototype/constants/layout_constants.dart';
import 'package:shopping_app_prototype/modules/cart/cart.dart';

class ShoppingCartButton extends StatelessWidget {
  const ShoppingCartButton();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartBloc, CartState>(
      builder: (_, state) {
        final cartItems = state.items;

        return Badge(
          animationType: BadgeAnimationType.scale,
          badgeContent: Text(
            '${cartItems.length}',
            style: TextStyle(color: Colors.white),
          ),
          position: BadgePosition.topEnd(
            top: LayoutConstants.spaceS,
            end: LayoutConstants.spaceS,
          ),
          showBadge: cartItems.isNotEmpty,
          child: IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () => Navigator.pushNamed(
              context,
              CartPage.route,
            ),
          ),
        );
      },
    );
  }
}
