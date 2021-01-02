part of 'cart_bloc.dart';

@freezed
abstract class CartEvent with _$CartEvent {
  const factory CartEvent.added({
    @required Product product,
  }) = ProductAdded;
  const factory CartEvent.removed({
    @required CartItem item,
  }) = CartItemRemoved;
  const factory CartEvent.countIncreased({
    @required CartItem item,
  }) = CartItemCountIncreased;
  const factory CartEvent.countDecreased({
    @required CartItem item,
  }) = CartItemCountDecreased;
}
