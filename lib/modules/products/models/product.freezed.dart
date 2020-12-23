// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ProductTearOff {
  const _$ProductTearOff();

// ignore: unused_element
  _Product call(
      {@required int sku,
      @required String name,
      @required String image,
      @required double regularPrice,
      @required double salePrice,
      @required bool onSale,
      String shortDescription}) {
    return _Product(
      sku: sku,
      name: name,
      image: image,
      regularPrice: regularPrice,
      salePrice: salePrice,
      onSale: onSale,
      shortDescription: shortDescription,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Product = _$ProductTearOff();

/// @nodoc
mixin _$Product {
  int get sku;
  String get name;
  String get image;
  double get regularPrice;
  double get salePrice;
  bool get onSale;
  String get shortDescription;

  $ProductCopyWith<Product> get copyWith;
}

/// @nodoc
abstract class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) then) =
      _$ProductCopyWithImpl<$Res>;
  $Res call(
      {int sku,
      String name,
      String image,
      double regularPrice,
      double salePrice,
      bool onSale,
      String shortDescription});
}

/// @nodoc
class _$ProductCopyWithImpl<$Res> implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._value, this._then);

  final Product _value;
  // ignore: unused_field
  final $Res Function(Product) _then;

  @override
  $Res call({
    Object sku = freezed,
    Object name = freezed,
    Object image = freezed,
    Object regularPrice = freezed,
    Object salePrice = freezed,
    Object onSale = freezed,
    Object shortDescription = freezed,
  }) {
    return _then(_value.copyWith(
      sku: sku == freezed ? _value.sku : sku as int,
      name: name == freezed ? _value.name : name as String,
      image: image == freezed ? _value.image : image as String,
      regularPrice: regularPrice == freezed
          ? _value.regularPrice
          : regularPrice as double,
      salePrice: salePrice == freezed ? _value.salePrice : salePrice as double,
      onSale: onSale == freezed ? _value.onSale : onSale as bool,
      shortDescription: shortDescription == freezed
          ? _value.shortDescription
          : shortDescription as String,
    ));
  }
}

/// @nodoc
abstract class _$ProductCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$ProductCopyWith(_Product value, $Res Function(_Product) then) =
      __$ProductCopyWithImpl<$Res>;
  @override
  $Res call(
      {int sku,
      String name,
      String image,
      double regularPrice,
      double salePrice,
      bool onSale,
      String shortDescription});
}

/// @nodoc
class __$ProductCopyWithImpl<$Res> extends _$ProductCopyWithImpl<$Res>
    implements _$ProductCopyWith<$Res> {
  __$ProductCopyWithImpl(_Product _value, $Res Function(_Product) _then)
      : super(_value, (v) => _then(v as _Product));

  @override
  _Product get _value => super._value as _Product;

  @override
  $Res call({
    Object sku = freezed,
    Object name = freezed,
    Object image = freezed,
    Object regularPrice = freezed,
    Object salePrice = freezed,
    Object onSale = freezed,
    Object shortDescription = freezed,
  }) {
    return _then(_Product(
      sku: sku == freezed ? _value.sku : sku as int,
      name: name == freezed ? _value.name : name as String,
      image: image == freezed ? _value.image : image as String,
      regularPrice: regularPrice == freezed
          ? _value.regularPrice
          : regularPrice as double,
      salePrice: salePrice == freezed ? _value.salePrice : salePrice as double,
      onSale: onSale == freezed ? _value.onSale : onSale as bool,
      shortDescription: shortDescription == freezed
          ? _value.shortDescription
          : shortDescription as String,
    ));
  }
}

/// @nodoc
class _$_Product implements _Product {
  const _$_Product(
      {@required this.sku,
      @required this.name,
      @required this.image,
      @required this.regularPrice,
      @required this.salePrice,
      @required this.onSale,
      this.shortDescription})
      : assert(sku != null),
        assert(name != null),
        assert(image != null),
        assert(regularPrice != null),
        assert(salePrice != null),
        assert(onSale != null);

  @override
  final int sku;
  @override
  final String name;
  @override
  final String image;
  @override
  final double regularPrice;
  @override
  final double salePrice;
  @override
  final bool onSale;
  @override
  final String shortDescription;

  @override
  String toString() {
    return 'Product(sku: $sku, name: $name, image: $image, regularPrice: $regularPrice, salePrice: $salePrice, onSale: $onSale, shortDescription: $shortDescription)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Product &&
            (identical(other.sku, sku) ||
                const DeepCollectionEquality().equals(other.sku, sku)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.regularPrice, regularPrice) ||
                const DeepCollectionEquality()
                    .equals(other.regularPrice, regularPrice)) &&
            (identical(other.salePrice, salePrice) ||
                const DeepCollectionEquality()
                    .equals(other.salePrice, salePrice)) &&
            (identical(other.onSale, onSale) ||
                const DeepCollectionEquality().equals(other.onSale, onSale)) &&
            (identical(other.shortDescription, shortDescription) ||
                const DeepCollectionEquality()
                    .equals(other.shortDescription, shortDescription)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(sku) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(regularPrice) ^
      const DeepCollectionEquality().hash(salePrice) ^
      const DeepCollectionEquality().hash(onSale) ^
      const DeepCollectionEquality().hash(shortDescription);

  @override
  _$ProductCopyWith<_Product> get copyWith =>
      __$ProductCopyWithImpl<_Product>(this, _$identity);
}

abstract class _Product implements Product {
  const factory _Product(
      {@required int sku,
      @required String name,
      @required String image,
      @required double regularPrice,
      @required double salePrice,
      @required bool onSale,
      String shortDescription}) = _$_Product;

  @override
  int get sku;
  @override
  String get name;
  @override
  String get image;
  @override
  double get regularPrice;
  @override
  double get salePrice;
  @override
  bool get onSale;
  @override
  String get shortDescription;
  @override
  _$ProductCopyWith<_Product> get copyWith;
}
