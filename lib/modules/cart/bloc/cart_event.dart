part of 'cart_bloc.dart';

@freezed
abstract class CartEvent with _$CartEvent {
  const factory CartEvent.added({
    @required Product product,
  }) = CartEventAdded;
  const factory CartEvent.removed({
    @required CartItem item,
  }) = CartEventRemoved;
  const factory CartEvent.countIncreased({
    @required CartItem item,
  }) = CartEventCountIncreased;
  const factory CartEvent.countDecreased({
    @required CartItem item,
  }) = CartEventCountDecreased;
}
