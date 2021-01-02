// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'cart_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
CartItem _$CartItemFromJson(Map<String, dynamic> json) {
  return _CartItem.fromJson(json);
}

/// @nodoc
class _$CartItemTearOff {
  const _$CartItemTearOff();

// ignore: unused_element
  _CartItem call({@required int count, @required Product product}) {
    return _CartItem(
      count: count,
      product: product,
    );
  }

// ignore: unused_element
  CartItem fromJson(Map<String, Object> json) {
    return CartItem.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $CartItem = _$CartItemTearOff();

/// @nodoc
mixin _$CartItem {
  int get count;
  Product get product;

  Map<String, dynamic> toJson();
  $CartItemCopyWith<CartItem> get copyWith;
}

/// @nodoc
abstract class $CartItemCopyWith<$Res> {
  factory $CartItemCopyWith(CartItem value, $Res Function(CartItem) then) =
      _$CartItemCopyWithImpl<$Res>;
  $Res call({int count, Product product});

  $ProductCopyWith<$Res> get product;
}

/// @nodoc
class _$CartItemCopyWithImpl<$Res> implements $CartItemCopyWith<$Res> {
  _$CartItemCopyWithImpl(this._value, this._then);

  final CartItem _value;
  // ignore: unused_field
  final $Res Function(CartItem) _then;

  @override
  $Res call({
    Object count = freezed,
    Object product = freezed,
  }) {
    return _then(_value.copyWith(
      count: count == freezed ? _value.count : count as int,
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
abstract class _$CartItemCopyWith<$Res> implements $CartItemCopyWith<$Res> {
  factory _$CartItemCopyWith(_CartItem value, $Res Function(_CartItem) then) =
      __$CartItemCopyWithImpl<$Res>;
  @override
  $Res call({int count, Product product});

  @override
  $ProductCopyWith<$Res> get product;
}

/// @nodoc
class __$CartItemCopyWithImpl<$Res> extends _$CartItemCopyWithImpl<$Res>
    implements _$CartItemCopyWith<$Res> {
  __$CartItemCopyWithImpl(_CartItem _value, $Res Function(_CartItem) _then)
      : super(_value, (v) => _then(v as _CartItem));

  @override
  _CartItem get _value => super._value as _CartItem;

  @override
  $Res call({
    Object count = freezed,
    Object product = freezed,
  }) {
    return _then(_CartItem(
      count: count == freezed ? _value.count : count as int,
      product: product == freezed ? _value.product : product as Product,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_CartItem implements _CartItem {
  const _$_CartItem({@required this.count, @required this.product})
      : assert(count != null),
        assert(product != null),
        assert(count > 0);

  factory _$_CartItem.fromJson(Map<String, dynamic> json) =>
      _$_$_CartItemFromJson(json);

  @override
  final int count;
  @override
  final Product product;

  @override
  String toString() {
    return 'CartItem(count: $count, product: $product)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CartItem &&
            (identical(other.count, count) ||
                const DeepCollectionEquality().equals(other.count, count)) &&
            (identical(other.product, product) ||
                const DeepCollectionEquality().equals(other.product, product)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(count) ^
      const DeepCollectionEquality().hash(product);

  @override
  _$CartItemCopyWith<_CartItem> get copyWith =>
      __$CartItemCopyWithImpl<_CartItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CartItemToJson(this);
  }
}

abstract class _CartItem implements CartItem {
  const factory _CartItem({@required int count, @required Product product}) =
      _$_CartItem;

  factory _CartItem.fromJson(Map<String, dynamic> json) = _$_CartItem.fromJson;

  @override
  int get count;
  @override
  Product get product;
  @override
  _$CartItemCopyWith<_CartItem> get copyWith;
}
