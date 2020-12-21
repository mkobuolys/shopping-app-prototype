import 'package:flutter/material.dart';

import 'package:shopping_app_prototype/modules/modules.dart';

class AppRouter {
  static Route<dynamic> generateRoute(
    RouteSettings settings,
  ) {
    switch (settings.name) {
      case ProductsPage.route:
        return MaterialPageRoute(builder: (_) => ProductsPage());
      case ProductDetailsPage.route:
        return MaterialPageRoute(builder: (_) => ProductDetailsPage());
      default:
        return MaterialPageRoute(builder: (_) => ProductsPage());
    }
  }
}
