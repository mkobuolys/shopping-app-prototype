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
  ProductAdded added({@required Product product}) {
    return ProductAdded(
      product: product,
    );
  }

// ignore: unused_element
  CartItemRemoved removed({@required CartItem item}) {
    return CartItemRemoved(
      item: item,
    );
  }

// ignore: unused_element
  CartItemCountIncreased countIncreased({@required CartItem item}) {
    return CartItemCountIncreased(
      item: item,
    );
  }

// ignore: unused_element
  CartItemCountDecreased countDecreased({@required CartItem item}) {
    return CartItemCountDecreased(
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
    @required TResult added(ProductAdded value),
    @required TResult removed(CartItemRemoved value),
    @required TResult countIncreased(CartItemCountIncreased value),
    @required TResult countDecreased(CartItemCountDecreased value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult added(ProductAdded value),
    TResult removed(CartItemRemoved value),
    TResult countIncreased(CartItemCountIncreased value),
    TResult countDecreased(CartItemCountDecreased value),
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
abstract class $ProductAddedCopyWith<$Res> {
  factory $ProductAddedCopyWith(
          ProductAdded value, $Res Function(ProductAdded) then) =
      _$ProductAddedCopyWithImpl<$Res>;
  $Res call({Product product});

  $ProductCopyWith<$Res> get product;
}

/// @nodoc
class _$ProductAddedCopyWithImpl<$Res> extends _$CartEventCopyWithImpl<$Res>
    implements $ProductAddedCopyWith<$Res> {
  _$ProductAddedCopyWithImpl(
      ProductAdded _value, $Res Function(ProductAdded) _then)
      : super(_value, (v) => _then(v as ProductAdded));

  @override
  ProductAdded get _value => super._value as ProductAdded;

  @override
  $Res call({
    Object product = freezed,
  }) {
    return _then(ProductAdded(
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
class _$ProductAdded implements ProductAdded {
  const _$ProductAdded({@required this.product}) : assert(product != null);

  @override
  final Product product;

  @override
  String toString() {
    return 'CartEvent.added(product: $product)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ProductAdded &&
            (identical(other.product, product) ||
                const DeepCollectionEquality().equals(other.product, product)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(product);

  @override
  $ProductAddedCopyWith<ProductAdded> get copyWith =>
      _$ProductAddedCopyWithImpl<ProductAdded>(this, _$identity);

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
    @required TResult added(ProductAdded value),
    @required TResult removed(CartItemRemoved value),
    @required TResult countIncreased(CartItemCountIncreased value),
    @required TResult countDecreased(CartItemCountDecreased value),
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
    TResult added(ProductAdded value),
    TResult removed(CartItemRemoved value),
    TResult countIncreased(CartItemCountIncreased value),
    TResult countDecreased(CartItemCountDecreased value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (added != null) {
      return added(this);
    }
    return orElse();
  }
}

abstract class ProductAdded implements CartEvent {
  const factory ProductAdded({@required Product product}) = _$ProductAdded;

  Product get product;
  $ProductAddedCopyWith<ProductAdded> get copyWith;
}

/// @nodoc
abstract class $CartItemRemovedCopyWith<$Res> {
  factory $CartItemRemovedCopyWith(
          CartItemRemoved value, $Res Function(CartItemRemoved) then) =
      _$CartItemRemovedCopyWithImpl<$Res>;
  $Res call({CartItem item});

  $CartItemCopyWith<$Res> get item;
}

/// @nodoc
class _$CartItemRemovedCopyWithImpl<$Res> extends _$CartEventCopyWithImpl<$Res>
    implements $CartItemRemovedCopyWith<$Res> {
  _$CartItemRemovedCopyWithImpl(
      CartItemRemoved _value, $Res Function(CartItemRemoved) _then)
      : super(_value, (v) => _then(v as CartItemRemoved));

  @override
  CartItemRemoved get _value => super._value as CartItemRemoved;

  @override
  $Res call({
    Object item = freezed,
  }) {
    return _then(CartItemRemoved(
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
class _$CartItemRemoved implements CartItemRemoved {
  const _$CartItemRemoved({@required this.item}) : assert(item != null);

  @override
  final CartItem item;

  @override
  String toString() {
    return 'CartEvent.removed(item: $item)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CartItemRemoved &&
            (identical(other.item, item) ||
                const DeepCollectionEquality().equals(other.item, item)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(item);

  @override
  $CartItemRemovedCopyWith<CartItemRemoved> get copyWith =>
      _$CartItemRemovedCopyWithImpl<CartItemRemoved>(this, _$identity);

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
    @required TResult added(ProductAdded value),
    @required TResult removed(CartItemRemoved value),
    @required TResult countIncreased(CartItemCountIncreased value),
    @required TResult countDecreased(CartItemCountDecreased value),
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
    TResult added(ProductAdded value),
    TResult removed(CartItemRemoved value),
    TResult countIncreased(CartItemCountIncreased value),
    TResult countDecreased(CartItemCountDecreased value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (removed != null) {
      return removed(this);
    }
    return orElse();
  }
}

abstract class CartItemRemoved implements CartEvent {
  const factory CartItemRemoved({@required CartItem item}) = _$CartItemRemoved;

  CartItem get item;
  $CartItemRemovedCopyWith<CartItemRemoved> get copyWith;
}

/// @nodoc
abstract class $CartItemCountIncreasedCopyWith<$Res> {
  factory $CartItemCountIncreasedCopyWith(CartItemCountIncreased value,
          $Res Function(CartItemCountIncreased) then) =
      _$CartItemCountIncreasedCopyWithImpl<$Res>;
  $Res call({CartItem item});

  $CartItemCopyWith<$Res> get item;
}

/// @nodoc
class _$CartItemCountIncreasedCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res>
    implements $CartItemCountIncreasedCopyWith<$Res> {
  _$CartItemCountIncreasedCopyWithImpl(CartItemCountIncreased _value,
      $Res Function(CartItemCountIncreased) _then)
      : super(_value, (v) => _then(v as CartItemCountIncreased));

  @override
  CartItemCountIncreased get _value => super._value as CartItemCountIncreased;

  @override
  $Res call({
    Object item = freezed,
  }) {
    return _then(CartItemCountIncreased(
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
class _$CartItemCountIncreased implements CartItemCountIncreased {
  const _$CartItemCountIncreased({@required this.item}) : assert(item != null);

  @override
  final CartItem item;

  @override
  String toString() {
    return 'CartEvent.countIncreased(item: $item)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CartItemCountIncreased &&
            (identical(other.item, item) ||
                const DeepCollectionEquality().equals(other.item, item)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(item);

  @override
  $CartItemCountIncreasedCopyWith<CartItemCountIncreased> get copyWith =>
      _$CartItemCountIncreasedCopyWithImpl<CartItemCountIncreased>(
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
    @required TResult added(ProductAdded value),
    @required TResult removed(CartItemRemoved value),
    @required TResult countIncreased(CartItemCountIncreased value),
    @required TResult countDecreased(CartItemCountDecreased value),
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
    TResult added(ProductAdded value),
    TResult removed(CartItemRemoved value),
    TResult countIncreased(CartItemCountIncreased value),
    TResult countDecreased(CartItemCountDecreased value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (countIncreased != null) {
      return countIncreased(this);
    }
    return orElse();
  }
}

abstract class CartItemCountIncreased implements CartEvent {
  const factory CartItemCountIncreased({@required CartItem item}) =
      _$CartItemCountIncreased;

  CartItem get item;
  $CartItemCountIncreasedCopyWith<CartItemCountIncreased> get copyWith;
}

/// @nodoc
abstract class $CartItemCountDecreasedCopyWith<$Res> {
  factory $CartItemCountDecreasedCopyWith(CartItemCountDecreased value,
          $Res Function(CartItemCountDecreased) then) =
      _$CartItemCountDecreasedCopyWithImpl<$Res>;
  $Res call({CartItem item});

  $CartItemCopyWith<$Res> get item;
}

/// @nodoc
class _$CartItemCountDecreasedCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res>
    implements $CartItemCountDecreasedCopyWith<$Res> {
  _$CartItemCountDecreasedCopyWithImpl(CartItemCountDecreased _value,
      $Res Function(CartItemCountDecreased) _then)
      : super(_value, (v) => _then(v as CartItemCountDecreased));

  @override
  CartItemCountDecreased get _value => super._value as CartItemCountDecreased;

  @override
  $Res call({
    Object item = freezed,
  }) {
    return _then(CartItemCountDecreased(
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
class _$CartItemCountDecreased implements CartItemCountDecreased {
  const _$CartItemCountDecreased({@required this.item}) : assert(item != null);

  @override
  final CartItem item;

  @override
  String toString() {
    return 'CartEvent.countDecreased(item: $item)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CartItemCountDecreased &&
            (identical(other.item, item) ||
                const DeepCollectionEquality().equals(other.item, item)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(item);

  @override
  $CartItemCountDecreasedCopyWith<CartItemCountDecreased> get copyWith =>
      _$CartItemCountDecreasedCopyWithImpl<CartItemCountDecreased>(
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
    @required TResult added(ProductAdded value),
    @required TResult removed(CartItemRemoved value),
    @required TResult countIncreased(CartItemCountIncreased value),
    @required TResult countDecreased(CartItemCountDecreased value),
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
    TResult added(ProductAdded value),
    TResult removed(CartItemRemoved value),
    TResult countIncreased(CartItemCountIncreased value),
    TResult countDecreased(CartItemCountDecreased value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (countDecreased != null) {
      return countDecreased(this);
    }
    return orElse();
  }
}

abstract class CartItemCountDecreased implements CartEvent {
  const factory CartItemCountDecreased({@required CartItem item}) =
      _$CartItemCountDecreased;

  CartItem get item;
  $CartItemCountDecreasedCopyWith<CartItemCountDecreased> get copyWith;
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
