import 'package:flutter/material.dart';

import 'package:shopping_app_prototype/widgets/shopping_cart_button.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  const CustomAppBar({
    @required this.title,
    this.showShoppingCartButton = true,
  });

  final String title;
  final bool showShoppingCartButton;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Text(title),
      actions: [
        if (showShoppingCartButton) const ShoppingCartButton(),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
