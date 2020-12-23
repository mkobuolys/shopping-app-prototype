// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'products_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ProductsDataTearOff {
  const _$ProductsDataTearOff();

// ignore: unused_element
  _ProductsData call({@required List<Product> products, @required int total}) {
    return _ProductsData(
      products: products,
      total: total,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ProductsData = _$ProductsDataTearOff();

/// @nodoc
mixin _$ProductsData {
  List<Product> get products;
  int get total;

  $ProductsDataCopyWith<ProductsData> get copyWith;
}

/// @nodoc
abstract class $ProductsDataCopyWith<$Res> {
  factory $ProductsDataCopyWith(
          ProductsData value, $Res Function(ProductsData) then) =
      _$ProductsDataCopyWithImpl<$Res>;
  $Res call({List<Product> products, int total});
}

/// @nodoc
class _$ProductsDataCopyWithImpl<$Res> implements $ProductsDataCopyWith<$Res> {
  _$ProductsDataCopyWithImpl(this._value, this._then);

  final ProductsData _value;
  // ignore: unused_field
  final $Res Function(ProductsData) _then;

  @override
  $Res call({
    Object products = freezed,
    Object total = freezed,
  }) {
    return _then(_value.copyWith(
      products:
          products == freezed ? _value.products : products as List<Product>,
      total: total == freezed ? _value.total : total as int,
    ));
  }
}

/// @nodoc
abstract class _$ProductsDataCopyWith<$Res>
    implements $ProductsDataCopyWith<$Res> {
  factory _$ProductsDataCopyWith(
          _ProductsData value, $Res Function(_ProductsData) then) =
      __$ProductsDataCopyWithImpl<$Res>;
  @override
  $Res call({List<Product> products, int total});
}

/// @nodoc
class __$ProductsDataCopyWithImpl<$Res> extends _$ProductsDataCopyWithImpl<$Res>
    implements _$ProductsDataCopyWith<$Res> {
  __$ProductsDataCopyWithImpl(
      _ProductsData _value, $Res Function(_ProductsData) _then)
      : super(_value, (v) => _then(v as _ProductsData));

  @override
  _ProductsData get _value => super._value as _ProductsData;

  @override
  $Res call({
    Object products = freezed,
    Object total = freezed,
  }) {
    return _then(_ProductsData(
      products:
          products == freezed ? _value.products : products as List<Product>,
      total: total == freezed ? _value.total : total as int,
    ));
  }
}

/// @nodoc
class _$_ProductsData implements _ProductsData {
  const _$_ProductsData({@required this.products, @required this.total})
      : assert(products != null),
        assert(total != null);

  @override
  final List<Product> products;
  @override
  final int total;

  @override
  String toString() {
    return 'ProductsData(products: $products, total: $total)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProductsData &&
            (identical(other.products, products) ||
                const DeepCollectionEquality()
                    .equals(other.products, products)) &&
            (identical(other.total, total) ||
                const DeepCollectionEquality().equals(other.total, total)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(products) ^
      const DeepCollectionEquality().hash(total);

  @override
  _$ProductsDataCopyWith<_ProductsData> get copyWith =>
      __$ProductsDataCopyWithImpl<_ProductsData>(this, _$identity);
}

abstract class _ProductsData implements ProductsData {
  const factory _ProductsData(
      {@required List<Product> products,
      @required int total}) = _$_ProductsData;

  @override
  List<Product> get products;
  @override
  int get total;
  @override
  _$ProductsDataCopyWith<_ProductsData> get copyWith;
}
