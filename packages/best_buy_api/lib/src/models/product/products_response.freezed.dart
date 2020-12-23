// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'products_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
ProductsResponse _$ProductsResponseFromJson(Map<String, dynamic> json) {
  return _ProductsResponse.fromJson(json);
}

/// @nodoc
class _$ProductsResponseTearOff {
  const _$ProductsResponseTearOff();

// ignore: unused_element
  _ProductsResponse call(
      {@required List<BestBuyProduct> products, @required int total}) {
    return _ProductsResponse(
      products: products,
      total: total,
    );
  }

// ignore: unused_element
  ProductsResponse fromJson(Map<String, Object> json) {
    return ProductsResponse.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $ProductsResponse = _$ProductsResponseTearOff();

/// @nodoc
mixin _$ProductsResponse {
  List<BestBuyProduct> get products;
  int get total;

  Map<String, dynamic> toJson();
  $ProductsResponseCopyWith<ProductsResponse> get copyWith;
}

/// @nodoc
abstract class $ProductsResponseCopyWith<$Res> {
  factory $ProductsResponseCopyWith(
          ProductsResponse value, $Res Function(ProductsResponse) then) =
      _$ProductsResponseCopyWithImpl<$Res>;
  $Res call({List<BestBuyProduct> products, int total});
}

/// @nodoc
class _$ProductsResponseCopyWithImpl<$Res>
    implements $ProductsResponseCopyWith<$Res> {
  _$ProductsResponseCopyWithImpl(this._value, this._then);

  final ProductsResponse _value;
  // ignore: unused_field
  final $Res Function(ProductsResponse) _then;

  @override
  $Res call({
    Object products = freezed,
    Object total = freezed,
  }) {
    return _then(_value.copyWith(
      products: products == freezed
          ? _value.products
          : products as List<BestBuyProduct>,
      total: total == freezed ? _value.total : total as int,
    ));
  }
}

/// @nodoc
abstract class _$ProductsResponseCopyWith<$Res>
    implements $ProductsResponseCopyWith<$Res> {
  factory _$ProductsResponseCopyWith(
          _ProductsResponse value, $Res Function(_ProductsResponse) then) =
      __$ProductsResponseCopyWithImpl<$Res>;
  @override
  $Res call({List<BestBuyProduct> products, int total});
}

/// @nodoc
class __$ProductsResponseCopyWithImpl<$Res>
    extends _$ProductsResponseCopyWithImpl<$Res>
    implements _$ProductsResponseCopyWith<$Res> {
  __$ProductsResponseCopyWithImpl(
      _ProductsResponse _value, $Res Function(_ProductsResponse) _then)
      : super(_value, (v) => _then(v as _ProductsResponse));

  @override
  _ProductsResponse get _value => super._value as _ProductsResponse;

  @override
  $Res call({
    Object products = freezed,
    Object total = freezed,
  }) {
    return _then(_ProductsResponse(
      products: products == freezed
          ? _value.products
          : products as List<BestBuyProduct>,
      total: total == freezed ? _value.total : total as int,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_ProductsResponse implements _ProductsResponse {
  const _$_ProductsResponse({@required this.products, @required this.total})
      : assert(products != null),
        assert(total != null);

  factory _$_ProductsResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_ProductsResponseFromJson(json);

  @override
  final List<BestBuyProduct> products;
  @override
  final int total;

  @override
  String toString() {
    return 'ProductsResponse(products: $products, total: $total)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProductsResponse &&
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
  _$ProductsResponseCopyWith<_ProductsResponse> get copyWith =>
      __$ProductsResponseCopyWithImpl<_ProductsResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ProductsResponseToJson(this);
  }
}

abstract class _ProductsResponse implements ProductsResponse {
  const factory _ProductsResponse(
      {@required List<BestBuyProduct> products,
      @required int total}) = _$_ProductsResponse;

  factory _ProductsResponse.fromJson(Map<String, dynamic> json) =
      _$_ProductsResponse.fromJson;

  @override
  List<BestBuyProduct> get products;
  @override
  int get total;
  @override
  _$ProductsResponseCopyWith<_ProductsResponse> get copyWith;
}
