import 'package:flutter/material.dart';

import 'package:shopping_app_prototype/pages/products/products_page.dart';

class AppRouter {
  static Route<dynamic> generateRoute(
    RouteSettings settings,
  ) {
    switch (settings.name) {
      case ProductsPage.route:
        return MaterialPageRoute(builder: (_) => ProductsPage());
      default:
        return MaterialPageRoute(builder: (_) => ProductsPage());
    }
  }
}
