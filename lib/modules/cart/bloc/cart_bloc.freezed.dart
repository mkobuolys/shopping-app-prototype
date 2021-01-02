// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'cart_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$CartEventTearOff {
  const _$CartEventTearOff();

// ignore: unused_element
  CartEventAdded added({@required Product product}) {
    return CartEventAdded(
      product: product,
    );
  }

// ignore: unused_element
  CartEventRemoved removed({@required CartItem item}) {
    return CartEventRemoved(
      item: item,
    );
  }

// ignore: unused_element
  CartEventCountIncreased countIncreased({@required CartItem item}) {
    return CartEventCountIncreased(
      item: item,
    );
  }

// ignore: unused_element
  CartEventCountDecreased countDecreased({@required CartItem item}) {
    return CartEventCountDecreased(
      item: item,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $CartEvent = _$CartEventTearOff();

/// @nodoc
mixin _$CartEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult added(Product product),
    @required TResult removed(CartItem item),
    @required TResult countIncreased(CartItem item),
    @required TResult countDecreased(CartItem item),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult added(Product product),
    TResult removed(CartItem item),
    TResult countIncreased(CartItem item),
    TResult countDecreased(CartItem item),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult added(CartEventAdded value),
    @required TResult removed(CartEventRemoved value),
    @required TResult countIncreased(CartEventCountIncreased value),
    @required TResult countDecreased(CartEventCountDecreased value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult added(CartEventAdded value),
    TResult removed(CartEventRemoved value),
    TResult countIncreased(CartEventCountIncreased value),
    TResult countDecreased(CartEventCountDecreased value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $CartEventCopyWith<$Res> {
  factory $CartEventCopyWith(CartEvent value, $Res Function(CartEvent) then) =
      _$CartEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CartEventCopyWithImpl<$Res> implements $CartEventCopyWith<$Res> {
  _$CartEventCopyWithImpl(this._value, this._then);

  final CartEvent _value;
  // ignore: unused_field
  final $Res Function(CartEvent) _then;
}

/// @nodoc
abstract class $CartEventAddedCopyWith<$Res> {
  factory $CartEventAddedCopyWith(
          CartEventAdded value, $Res Function(CartEventAdded) then) =
      _$CartEventAddedCopyWithImpl<$Res>;
  $Res call({Product product});

  $ProductCopyWith<$Res> get product;
}

/// @nodoc
class _$CartEventAddedCopyWithImpl<$Res> extends _$CartEventCopyWithImpl<$Res>
    implements $CartEventAddedCopyWith<$Res> {
  _$CartEventAddedCopyWithImpl(
      CartEventAdded _value, $Res Function(CartEventAdded) _then)
      : super(_value, (v) => _then(v as CartEventAdded));

  @override
  CartEventAdded get _value => super._value as CartEventAdded;

  @override
  $Res call({
    Object product = freezed,
  }) {
    return _then(CartEventAdded(
      product: product == freezed ? _value.product : product as Product,
    ));
  }

  @override
  $ProductCopyWith<$Res> get product {
    if (_value.product == null) {
      return null;
    }
    return $ProductCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value));
    });
  }
}

/// @nodoc
class _$CartEventAdded implements CartEventAdded {
  const _$CartEventAdded({@required this.product}) : assert(product != null);

  @override
  final Product product;

  @override
  String toString() {
    return 'CartEvent.added(product: $product)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CartEventAdded &&
            (identical(other.product, product) ||
                const DeepCollectionEquality().equals(other.product, product)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(product);

  @override
  $CartEventAddedCopyWith<CartEventAdded> get copyWith =>
      _$CartEventAddedCopyWithImpl<CartEventAdded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult added(Product product),
    @required TResult removed(CartItem item),
    @required TResult countIncreased(CartItem item),
    @required TResult countDecreased(CartItem item),
  }) {
    assert(added != null);
    assert(removed != null);
    assert(countIncreased != null);
    assert(countDecreased != null);
    return added(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult added(Product product),
    TResult removed(CartItem item),
    TResult countIncreased(CartItem item),
    TResult countDecreased(CartItem item),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (added != null) {
      return added(product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult added(CartEventAdded value),
    @required TResult removed(CartEventRemoved value),
    @required TResult countIncreased(CartEventCountIncreased value),
    @required TResult countDecreased(CartEventCountDecreased value),
  }) {
    assert(added != null);
    assert(removed != null);
    assert(countIncreased != null);
    assert(countDecreased != null);
    return added(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult added(CartEventAdded value),
    TResult removed(CartEventRemoved value),
    TResult countIncreased(CartEventCountIncreased value),
    TResult countDecreased(CartEventCountDecreased value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (added != null) {
      return added(this);
    }
    return orElse();
  }
}

abstract class CartEventAdded implements CartEvent {
  const factory CartEventAdded({@required Product product}) = _$CartEventAdded;

  Product get product;
  $CartEventAddedCopyWith<CartEventAdded> get copyWith;
}

/// @nodoc
abstract class $CartEventRemovedCopyWith<$Res> {
  factory $CartEventRemovedCopyWith(
          CartEventRemoved value, $Res Function(CartEventRemoved) then) =
      _$CartEventRemovedCopyWithImpl<$Res>;
  $Res call({CartItem item});

  $CartItemCopyWith<$Res> get item;
}

/// @nodoc
class _$CartEventRemovedCopyWithImpl<$Res> extends _$CartEventCopyWithImpl<$Res>
    implements $CartEventRemovedCopyWith<$Res> {
  _$CartEventRemovedCopyWithImpl(
      CartEventRemoved _value, $Res Function(CartEventRemoved) _then)
      : super(_value, (v) => _then(v as CartEventRemoved));

  @override
  CartEventRemoved get _value => super._value as CartEventRemoved;

  @override
  $Res call({
    Object item = freezed,
  }) {
    return _then(CartEventRemoved(
      item: item == freezed ? _value.item : item as CartItem,
    ));
  }

  @override
  $CartItemCopyWith<$Res> get item {
    if (_value.item == null) {
      return null;
    }
    return $CartItemCopyWith<$Res>(_value.item, (value) {
      return _then(_value.copyWith(item: value));
    });
  }
}

/// @nodoc
class _$CartEventRemoved implements CartEventRemoved {
  const _$CartEventRemoved({@required this.item}) : assert(item != null);

  @override
  final CartItem item;

  @override
  String toString() {
    return 'CartEvent.removed(item: $item)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CartEventRemoved &&
            (identical(other.item, item) ||
                const DeepCollectionEquality().equals(other.item, item)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(item);

  @override
  $CartEventRemovedCopyWith<CartEventRemoved> get copyWith =>
      _$CartEventRemovedCopyWithImpl<CartEventRemoved>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult added(Product product),
    @required TResult removed(CartItem item),
    @required TResult countIncreased(CartItem item),
    @required TResult countDecreased(CartItem item),
  }) {
    assert(added != null);
    assert(removed != null);
    assert(countIncreased != null);
    assert(countDecreased != null);
    return removed(item);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult added(Product product),
    TResult removed(CartItem item),
    TResult countIncreased(CartItem item),
    TResult countDecreased(CartItem item),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (removed != null) {
      return removed(item);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult added(CartEventAdded value),
    @required TResult removed(CartEventRemoved value),
    @required TResult countIncreased(CartEventCountIncreased value),
    @required TResult countDecreased(CartEventCountDecreased value),
  }) {
    assert(added != null);
    assert(removed != null);
    assert(countIncreased != null);
    assert(countDecreased != null);
    return removed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult added(CartEventAdded value),
    TResult removed(CartEventRemoved value),
    TResult countIncreased(CartEventCountIncreased value),
    TResult countDecreased(CartEventCountDecreased value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (removed != null) {
      return removed(this);
    }
    return orElse();
  }
}

abstract class CartEventRemoved implements CartEvent {
  const factory CartEventRemoved({@required CartItem item}) =
      _$CartEventRemoved;

  CartItem get item;
  $CartEventRemovedCopyWith<CartEventRemoved> get copyWith;
}

/// @nodoc
abstract class $CartEventCountIncreasedCopyWith<$Res> {
  factory $CartEventCountIncreasedCopyWith(CartEventCountIncreased value,
          $Res Function(CartEventCountIncreased) then) =
      _$CartEventCountIncreasedCopyWithImpl<$Res>;
  $Res call({CartItem item});

  $CartItemCopyWith<$Res> get item;
}

/// @nodoc
class _$CartEventCountIncreasedCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res>
    implements $CartEventCountIncreasedCopyWith<$Res> {
  _$CartEventCountIncreasedCopyWithImpl(CartEventCountIncreased _value,
      $Res Function(CartEventCountIncreased) _then)
      : super(_value, (v) => _then(v as CartEventCountIncreased));

  @override
  CartEventCountIncreased get _value => super._value as CartEventCountIncreased;

  @override
  $Res call({
    Object item = freezed,
  }) {
    return _then(CartEventCountIncreased(
      item: item == freezed ? _value.item : item as CartItem,
    ));
  }

  @override
  $CartItemCopyWith<$Res> get item {
    if (_value.item == null) {
      return null;
    }
    return $CartItemCopyWith<$Res>(_value.item, (value) {
      return _then(_value.copyWith(item: value));
    });
  }
}

/// @nodoc
class _$CartEventCountIncreased implements CartEventCountIncreased {
  const _$CartEventCountIncreased({@required this.item}) : assert(item != null);

  @override
  final CartItem item;

  @override
  String toString() {
    return 'CartEvent.countIncreased(item: $item)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CartEventCountIncreased &&
            (identical(other.item, item) ||
                const DeepCollectionEquality().equals(other.item, item)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(item);

  @override
  $CartEventCountIncreasedCopyWith<CartEventCountIncreased> get copyWith =>
      _$CartEventCountIncreasedCopyWithImpl<CartEventCountIncreased>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult added(Product product),
    @required TResult removed(CartItem item),
    @required TResult countIncreased(CartItem item),
    @required TResult countDecreased(CartItem item),
  }) {
    assert(added != null);
    assert(removed != null);
    assert(countIncreased != null);
    assert(countDecreased != null);
    return countIncreased(item);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult added(Product product),
    TResult removed(CartItem item),
    TResult countIncreased(CartItem item),
    TResult countDecreased(CartItem item),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (countIncreased != null) {
      return countIncreased(item);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult added(CartEventAdded value),
    @required TResult removed(CartEventRemoved value),
    @required TResult countIncreased(CartEventCountIncreased value),
    @required TResult countDecreased(CartEventCountDecreased value),
  }) {
    assert(added != null);
    assert(removed != null);
    assert(countIncreased != null);
    assert(countDecreased != null);
    return countIncreased(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult added(CartEventAdded value),
    TResult removed(CartEventRemoved value),
    TResult countIncreased(CartEventCountIncreased value),
    TResult countDecreased(CartEventCountDecreased value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (countIncreased != null) {
      return countIncreased(this);
    }
    return orElse();
  }
}

abstract class CartEventCountIncreased implements CartEvent {
  const factory CartEventCountIncreased({@required CartItem item}) =
      _$CartEventCountIncreased;

  CartItem get item;
  $CartEventCountIncreasedCopyWith<CartEventCountIncreased> get copyWith;
}

/// @nodoc
abstract class $CartEventCountDecreasedCopyWith<$Res> {
  factory $CartEventCountDecreasedCopyWith(CartEventCountDecreased value,
          $Res Function(CartEventCountDecreased) then) =
      _$CartEventCountDecreasedCopyWithImpl<$Res>;
  $Res call({CartItem item});

  $CartItemCopyWith<$Res> get item;
}

/// @nodoc
class _$CartEventCountDecreasedCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res>
    implements $CartEventCountDecreasedCopyWith<$Res> {
  _$CartEventCountDecreasedCopyWithImpl(CartEventCountDecreased _value,
      $Res Function(CartEventCountDecreased) _then)
      : super(_value, (v) => _then(v as CartEventCountDecreased));

  @override
  CartEventCountDecreased get _value => super._value as CartEventCountDecreased;

  @override
  $Res call({
    Object item = freezed,
  }) {
    return _then(CartEventCountDecreased(
      item: item == freezed ? _value.item : item as CartItem,
    ));
  }

  @override
  $CartItemCopyWith<$Res> get item {
    if (_value.item == null) {
      return null;
    }
    return $CartItemCopyWith<$Res>(_value.item, (value) {
      return _then(_value.copyWith(item: value));
    });
  }
}

/// @nodoc
class _$CartEventCountDecreased implements CartEventCountDecreased {
  const _$CartEventCountDecreased({@required this.item}) : assert(item != null);

  @override
  final CartItem item;

  @override
  String toString() {
    return 'CartEvent.countDecreased(item: $item)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CartEventCountDecreased &&
            (identical(other.item, item) ||
                const DeepCollectionEquality().equals(other.item, item)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(item);

  @override
  $CartEventCountDecreasedCopyWith<CartEventCountDecreased> get copyWith =>
      _$CartEventCountDecreasedCopyWithImpl<CartEventCountDecreased>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult added(Product product),
    @required TResult removed(CartItem item),
    @required TResult countIncreased(CartItem item),
    @required TResult countDecreased(CartItem item),
  }) {
    assert(added != null);
    assert(removed != null);
    assert(countIncreased != null);
    assert(countDecreased != null);
    return countDecreased(item);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult added(Product product),
    TResult removed(CartItem item),
    TResult countIncreased(CartItem item),
    TResult countDecreased(CartItem item),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (countDecreased != null) {
      return countDecreased(item);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult added(CartEventAdded value),
    @required TResult removed(CartEventRemoved value),
    @required TResult countIncreased(CartEventCountIncreased value),
    @required TResult countDecreased(CartEventCountDecreased value),
  }) {
    assert(added != null);
    assert(removed != null);
    assert(countIncreased != null);
    assert(countDecreased != null);
    return countDecreased(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult added(CartEventAdded value),
    TResult removed(CartEventRemoved value),
    TResult countIncreased(CartEventCountIncreased value),
    TResult countDecreased(CartEventCountDecreased value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (countDecreased != null) {
      return countDecreased(this);
    }
    return orElse();
  }
}

abstract class CartEventCountDecreased implements CartEvent {
  const factory CartEventCountDecreased({@required CartItem item}) =
      _$CartEventCountDecreased;

  CartItem get item;
  $CartEventCountDecreasedCopyWith<CartEventCountDecreased> get copyWith;
}

/// @nodoc
class _$CartStateTearOff {
  const _$CartStateTearOff();

// ignore: unused_element
  _CartState call({@required BuiltList<CartItem> items}) {
    return _CartState(
      items: items,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $CartState = _$CartStateTearOff();

/// @nodoc
mixin _$CartState {
  BuiltList<CartItem> get items;

  $CartStateCopyWith<CartState> get copyWith;
}

/// @nodoc
abstract class $CartStateCopyWith<$Res> {
  factory $CartStateCopyWith(CartState value, $Res Function(CartState) then) =
      _$CartStateCopyWithImpl<$Res>;
  $Res call({BuiltList<CartItem> items});
}

/// @nodoc
class _$CartStateCopyWithImpl<$Res> implements $CartStateCopyWith<$Res> {
  _$CartStateCopyWithImpl(this._value, this._then);

  final CartState _value;
  // ignore: unused_field
  final $Res Function(CartState) _then;

  @override
  $Res call({
    Object items = freezed,
  }) {
    return _then(_value.copyWith(
      items: items == freezed ? _value.items : items as BuiltList<CartItem>,
    ));
  }
}

/// @nodoc
abstract class _$CartStateCopyWith<$Res> implements $CartStateCopyWith<$Res> {
  factory _$CartStateCopyWith(
          _CartState value, $Res Function(_CartState) then) =
      __$CartStateCopyWithImpl<$Res>;
  @override
  $Res call({BuiltList<CartItem> items});
}

/// @nodoc
class __$CartStateCopyWithImpl<$Res> extends _$CartStateCopyWithImpl<$Res>
    implements _$CartStateCopyWith<$Res> {
  __$CartStateCopyWithImpl(_CartState _value, $Res Function(_CartState) _then)
      : super(_value, (v) => _then(v as _CartState));

  @override
  _CartState get _value => super._value as _CartState;

  @override
  $Res call({
    Object items = freezed,
  }) {
    return _then(_CartState(
      items: items == freezed ? _value.items : items as BuiltList<CartItem>,
    ));
  }
}

/// @nodoc
class _$_CartState implements _CartState {
  const _$_CartState({@required this.items}) : assert(items != null);

  @override
  final BuiltList<CartItem> items;

  @override
  String toString() {
    return 'CartState(items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CartState &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(items);

  @override
  _$CartStateCopyWith<_CartState> get copyWith =>
      __$CartStateCopyWithImpl<_CartState>(this, _$identity);
}

abstract class _CartState implements CartState {
  const factory _CartState({@required BuiltList<CartItem> items}) =
      _$_CartState;

  @override
  BuiltList<CartItem> get items;
  @override
  _$CartStateCopyWith<_CartState> get copyWith;
}
