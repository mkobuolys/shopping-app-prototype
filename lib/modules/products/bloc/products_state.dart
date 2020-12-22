part of 'products_bloc.dart';

@freezed
abstract class ProductsState with _$ProductsState {
  const factory ProductsState.initial() = ProductsInitial;
  const factory ProductsState.loadSuccess({
    @required List<Product> products,
  }) = ProductsLoadSuccess;
  const factory ProductsState.loadFailure() = ProductsLoadFailure;
}
