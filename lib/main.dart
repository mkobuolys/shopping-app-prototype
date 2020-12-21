import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:shopping_app_prototype/app_router.dart';
import 'package:shopping_app_prototype/pages/products/products_page.dart';
import 'package:shopping_app_prototype/theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shopping App prototype',
      theme: theme,
      onGenerateRoute: AppRouter.generateRoute,
      initialRoute: ProductsPage.route,
      home: Text('Hello World!'),
    );
  }
}
