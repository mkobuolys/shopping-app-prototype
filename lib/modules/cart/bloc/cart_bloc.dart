import 'package:built_collection/built_collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:meta/meta.dart';

import 'package:shopping_app_prototype/modules/cart/models/cart_item.dart';
import 'package:shopping_app_prototype/modules/products/models/product.dart';

part 'cart_event.dart';
part 'cart_state.dart';
part 'cart_bloc.freezed.dart';

class CartBloc extends HydratedBloc<CartEvent, CartState> {
  CartBloc() : super(CartState.initial());

  @override
  Stream<CartState> mapEventToState(CartEvent event) => event.map(
        added: _mapAddedToState,
        removed: _mapRemovedToState,
        countIncreased: _mapCountIncreasedToState,
        countDecreased: _mapCountDecreasedToState,
      );

  Stream<CartState> _mapAddedToState(
    ProductAdded event,
  ) async* {
    final cartItem = CartItem(count: 1, product: event.product);
    final cartItemIndex = state.items.indexWhere(
      (item) => item.product == cartItem.product,
    );

    if (cartItemIndex >= 0) {
      yield* _increaseCartItemCount(cartItem, cartItemIndex);
    } else {
      final items = state.items.rebuild((builder) => builder.add(cartItem));

      yield state.copyWith(items: items);
    }
  }

  Stream<CartState> _mapRemovedToState(
    CartItemRemoved event,
  ) async* {
    final cartItem = event.item;

    yield* _removeCartItem(cartItem);
  }

  Stream<CartState> _mapCountIncreasedToState(
    CartItemCountIncreased event,
  ) async* {
    final cartItem = event.item;
    final cartItemIndex = state.items.indexOf(cartItem);

    if (cartItemIndex >= 0) {
      yield* _increaseCartItemCount(cartItem, cartItemIndex);
    }
  }

  Stream<CartState> _mapCountDecreasedToState(
    CartItemCountDecreased event,
  ) async* {
    final cartItem = event.item;

    if (cartItem.count > 1) {
      final cartItemIndex = state.items.indexOf(cartItem);

      if (cartItemIndex >= 0) {
        yield* _decreaseCartItemCount(cartItem, cartItemIndex);
      }
    } else {
      yield* _removeCartItem(cartItem);
    }
  }

  Stream<CartState> _increaseCartItemCount(
    CartItem item,
    int index,
  ) async* {
    yield* _changeCartItemCount(item, index, 1);
  }

  Stream<CartState> _decreaseCartItemCount(
    CartItem item,
    int index,
  ) async* {
    yield* _changeCartItemCount(item, index, -1);
  }

  Stream<CartState> _changeCartItemCount(
    CartItem item,
    int index,
    int value,
  ) async* {
    final items = state.items.rebuild(
      (builder) => builder[index] = item.copyWith(count: item.count + value),
    );

    yield state.copyWith(items: items);
  }

  Stream<CartState> _removeCartItem(CartItem item) async* {
    final items = state.items.rebuild((builder) => builder.remove(item));

    yield state.copyWith(items: items);
  }

  @override
  CartState fromJson(Map<String, dynamic> json) {
    final cartItemsJsonList = json['items'] as List;
    final cartItems =
        cartItemsJsonList.map((item) => CartItem.fromJson(item)).toList();

    return CartState(items: cartItems.build());
  }

  @override
  Map<String, dynamic> toJson(CartState state) {
    return <String, dynamic>{
      'items': state.items.toList(),
    };
  }
}
