import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:shopping_app_prototype/modules/products/bloc/products_bloc.dart';
import 'package:shopping_app_prototype/modules/products/widgets/widgets.dart';
import 'package:shopping_app_prototype/widgets/widgets.dart';

class ProductsPage extends StatelessWidget {
  static const String route = '/products';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Promoted products'),
      body: BlocBuilder<ProductsBloc, ProductsState>(
        builder: (_, state) => state.map<Widget>(
          initial: (_) => const ProductsLoading(),
          loadSuccess: (ProductsLoadSuccess productsLoadSuccessState) =>
              ProductsListView(
            products: productsLoadSuccessState.products,
            productsTotal: productsLoadSuccessState.total,
          ),
          loadFailure: (_) => const ProductsError(),
        ),
      ),
    );
  }
}
