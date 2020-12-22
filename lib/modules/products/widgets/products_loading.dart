import 'package:flutter/material.dart';

import 'package:shopping_app_prototype/widgets/widgets.dart';

class ProductsLoading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularLoader(),
    );
  }
}
