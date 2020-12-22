import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:shopping_app_prototype/config/config.dart';
import 'package:shopping_app_prototype/modules/products/products.dart';
import 'package:shopping_app_prototype/utils/utils.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  Bloc.observer = ShoppingAppBlocObserver();

  runApp(App(repository: ProductsRepository()));
}

class App extends StatelessWidget {
  const App({
    @required this.repository,
  });

  final ProductsRepository repository;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ProductsBloc(
        repository: repository,
      )..add(ProductsEvent.loadStarted()),
      child: MaterialApp(
        title: 'Shopping App prototype',
        theme: theme,
        onGenerateRoute: AppRouter.generateRoute,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
