import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:shopping_app_prototype/modules/cart/bloc/cart_bloc.dart';
import 'package:shopping_app_prototype/modules/cart/widgets/widgets.dart';
import 'package:shopping_app_prototype/widgets/custom_app_bar.dart';

class CartPage extends StatelessWidget {
  static const String route = '/cart';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Cart',
        showShoppingCartButton: false,
      ),
      body: BlocBuilder<CartBloc, CartState>(
        builder: (_, state) {
          final cartItems = state.items;

          return cartItems.isNotEmpty
              ? CartListView(cartItems: cartItems)
              : CartEmpty();
        },
      ),
    );
  }
}
