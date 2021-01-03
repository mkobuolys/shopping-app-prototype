import 'package:flutter/material.dart';

import 'package:shopping_app_prototype/modules/modules.dart';

class AppRouter {
  static Route<dynamic> generateRoute(
    RouteSettings settings,
  ) {
    switch (settings.name) {
      case CartPage.route:
        return MaterialPageRoute(builder: (_) => CartPage());
      case ProductsPage.route:
        return MaterialPageRoute(builder: (_) => ProductsPage());
      case ProductDetailsPage.route:
        final arguments = settings.arguments as Map<String, dynamic>;
        final product = arguments['product'] as Product;

        return MaterialPageRoute(
          builder: (_) => ProductDetailsPage(product: product),
        );
      default:
        return MaterialPageRoute(builder: (_) => ProductsPage());
    }
  }
}
