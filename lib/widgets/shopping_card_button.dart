import 'package:flutter/material.dart';

import 'package:badges/badges.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:shopping_app_prototype/constants/layout_constants.dart';
import 'package:shopping_app_prototype/modules/cart/bloc/cart_bloc.dart';

class ShoppingCardButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartBloc, CartState>(
      builder: (context, state) => Badge(
        badgeContent: Text(
          '${state.items.length}',
          style: TextStyle(color: Colors.white),
        ),
        position: BadgePosition.topEnd(
          top: LayoutConstants.spaceS,
          end: LayoutConstants.spaceS,
        ),
        animationType: BadgeAnimationType.scale,
        child: IconButton(
          icon: Icon(Icons.shopping_cart),
          onPressed: () => {},
        ),
      ),
    );
  }
}
