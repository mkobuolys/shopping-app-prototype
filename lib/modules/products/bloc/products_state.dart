part of 'products_bloc.dart';

@freezed
abstract class ProductsState with _$ProductsState {
  const factory ProductsState.initial() = ProductsInitial;
  const factory ProductsState.loadSuccess({
    @required BuiltList<Product> products,
    @required int total,
  }) = ProductsLoadSuccess;
  const factory ProductsState.loadFailure() = ProductsLoadFailure;
}
