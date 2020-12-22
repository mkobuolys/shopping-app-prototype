import 'package:flutter/material.dart';

import 'package:best_buy_api/best_buy_api.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:shopping_app_prototype/modules/products/bloc/products_bloc.dart';
import 'package:shopping_app_prototype/modules/products/widgets/products_list/product_card.dart';
import 'package:shopping_app_prototype/widgets/widgets.dart';

class ProductsListView extends StatefulWidget {
  const ProductsListView({
    @required this.products,
  });

  final List<Product> products;

  @override
  _ProductsListViewState createState() => _ProductsListViewState();
}

class _ProductsListViewState extends State<ProductsListView> {
  final ScrollController _scrollController = ScrollController();
  ProductsBloc _productsBloc;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
    _productsBloc = context.read<ProductsBloc>();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_scrollController.hasClients) {
      final maxScrollExtent = _scrollController.position.maxScrollExtent;
      final _currentOffset = _scrollController.offset;

      if (_currentOffset >= maxScrollExtent * 0.8) {
        _productsBloc.add(ProductsLoadStarted());
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      controller: _scrollController,
      itemCount: widget.products.length + 1,
      itemBuilder: (_, i) => i >= widget.products.length
          ? CircularLoader()
          : ProductCard(product: widget.products[i]),
    );
  }
}
