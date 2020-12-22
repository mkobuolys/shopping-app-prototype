import 'package:flutter/material.dart';

import 'package:best_buy_api/best_buy_api.dart';
import 'package:built_collection/built_collection.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:shopping_app_prototype/modules/products/bloc/products_bloc.dart';
import 'package:shopping_app_prototype/modules/products/widgets/products_list/product_card.dart';
import 'package:shopping_app_prototype/widgets/widgets.dart';

class ProductsListView extends StatefulWidget {
  const ProductsListView({
    @required this.products,
    @required this.productsTotal,
  });

  final BuiltList<Product> products;
  final int productsTotal;

  @override
  _ProductsListViewState createState() => _ProductsListViewState();
}

class _ProductsListViewState extends State<ProductsListView> {
  final ScrollController _scrollController = ScrollController();
  ProductsBloc _productsBloc;

  int get _productsCount => widget.products.length;
  bool get _shouldLoadMoreProducts => _productsCount < widget.productsTotal;

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

  Future<void> _onRefresh() async {
    _productsBloc.add(ProductsLoadStarted(isRefresh: true));
  }

  void _onScroll() {
    if (_scrollController.hasClients && _shouldLoadMoreProducts) {
      final maxScrollExtent = _scrollController.position.maxScrollExtent;
      final _currentOffset = _scrollController.offset;

      if (_currentOffset >= maxScrollExtent * 0.8) {
        _productsBloc.add(ProductsLoadStarted());
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: _onRefresh,
      color: Colors.black,
      child: ListView.builder(
        controller: _scrollController,
        itemCount:
            _shouldLoadMoreProducts ? _productsCount + 1 : _productsCount,
        itemBuilder: (_, i) => i >= _productsCount
            ? CircularLoader()
            : ProductCard(product: widget.products[i]),
      ),
    );
  }
}
