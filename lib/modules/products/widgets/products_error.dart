import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:shopping_app_prototype/modules/products/bloc/products_bloc.dart';

class ProductsError extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Oops, something went wrong...'),
          const SizedBox(height: 8.0),
          FlatButton(
            child: Text(
              'Retry',
              style: TextStyle(color: Colors.white),
            ),
            color: Colors.black,
            onPressed: () =>
                context.read<ProductsBloc>().add(ProductsLoadStarted()),
          )
        ],
      ),
    );
  }
}
