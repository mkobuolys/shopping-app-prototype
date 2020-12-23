import 'package:flutter/material.dart';

import 'package:shopping_app_prototype/widgets/shopping_card_button.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  const CustomAppBar({
    @required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Text(title),
      actions: [
        ShoppingCardButton(),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
