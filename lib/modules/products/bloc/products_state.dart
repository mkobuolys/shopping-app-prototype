part of 'products_bloc.dart';

@freezed
abstract class ProductsState with _$ProductsState {
  const factory ProductsState.loadInProgress() = ProductsLoadInProgress;
  const factory ProductsState.loadSuccess({
    @required List<Product> products,
  }) = ProductsLoadSuccess;
  const factory ProductsState.loadFailure() = ProductsLoadFailure;
}
