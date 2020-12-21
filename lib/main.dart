import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:best_buy_api/best_buy_api.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:shopping_app_prototype/app_router.dart';
import 'package:shopping_app_prototype/modules/products/products.dart';
import 'package:shopping_app_prototype/theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ProductsBloc>(
          create: (_) => ProductsBloc(
            repository: ProductsRepository(
              client: BestBuyApiClient(),
            ),
          )..add(ProductsEvent.loadStarted()),
        ),
      ],
      child: MaterialApp(
        title: 'Shopping App prototype',
        theme: theme,
        onGenerateRoute: AppRouter.generateRoute,
        initialRoute: ProductsPage.route,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
