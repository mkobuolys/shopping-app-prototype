import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:shopping_app_prototype/modules/products/bloc/products_bloc.dart';
import 'package:shopping_app_prototype/modules/products/widgets/widgets.dart';

class ProductsPage extends StatelessWidget {
  static const String route = '/products';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<ProductsBloc, ProductsState>(
        builder: (context, state) => state.map<Widget>(
          loadInProgress: (_) => ProductsLoading(),
          loadSuccess: (ProductsLoadSuccess productsLoadSuccessState) =>
              ProductsListView(products: productsLoadSuccessState.products),
          loadFailure: (_) => ProductsError(),
        ),
      ),
    );
  }
}