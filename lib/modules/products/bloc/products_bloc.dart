import 'package:meta/meta.dart';

import 'package:best_buy_api/best_buy_api.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:shopping_app_prototype/modules/products/repositories/products_repository.dart';

part 'products_state.dart';
part 'products_event.dart';
part 'products_bloc.freezed.dart';

class ProductsBloc extends Bloc<ProductsEvent, ProductsState> {
  ProductsBloc({
    @required this.repository,
  }) : super(ProductsState.loadInProgress());

  final ProductsRepository repository;

  @override
  Stream<ProductsState> mapEventToState(ProductsEvent event) => event.map(
        loadStarted: _mapLoadStartedToState,
      );

  Stream<ProductsState> _mapLoadStartedToState(_) async* {
    yield ProductsState.loadInProgress();

    try {
      final products = await repository.getProducts();

      yield ProductsState.loadSuccess(
        products: products,
      );
    } catch (e) {
      print(e);

      yield ProductsState.loadFailure();
    }
  }
}
