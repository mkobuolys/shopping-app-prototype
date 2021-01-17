import 'package:flutter/material.dart';

import 'package:shopping_app_prototype/widgets/widgets.dart';

class ProductsLoading extends StatelessWidget {
  const ProductsLoading();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularLoader(),
    );
  }
}
