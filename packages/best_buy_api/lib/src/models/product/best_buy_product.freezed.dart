// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'best_buy_product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
BestBuyProduct _$BestBuyProductFromJson(Map<String, dynamic> json) {
  return _BestBuyProduct.fromJson(json);
}

/// @nodoc
class _$BestBuyProductTearOff {
  const _$BestBuyProductTearOff();

// ignore: unused_element
  _BestBuyProduct call(
      {@required int sku,
      @required String name,
      @required String image,
      @required double regularPrice,
      @required double salePrice,
      @required bool onSale,
      String shortDescription}) {
    return _BestBuyProduct(
      sku: sku,
      name: name,
      image: image,
      regularPrice: regularPrice,
      salePrice: salePrice,
      onSale: onSale,
      shortDescription: shortDescription,
    );
  }

// ignore: unused_element
  BestBuyProduct fromJson(Map<String, Object> json) {
    return BestBuyProduct.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $BestBuyProduct = _$BestBuyProductTearOff();

/// @nodoc
mixin _$BestBuyProduct {
  int get sku;
  String get name;
  String get image;
  double get regularPrice;
  double get salePrice;
  bool get onSale;
  String get shortDescription;

  Map<String, dynamic> toJson();
  $BestBuyProductCopyWith<BestBuyProduct> get copyWith;
}

/// @nodoc
abstract class $BestBuyProductCopyWith<$Res> {
  factory $BestBuyProductCopyWith(
          BestBuyProduct value, $Res Function(BestBuyProduct) then) =
      _$BestBuyProductCopyWithImpl<$Res>;
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
class _$BestBuyProductCopyWithImpl<$Res>
    implements $BestBuyProductCopyWith<$Res> {
  _$BestBuyProductCopyWithImpl(this._value, this._then);

  final BestBuyProduct _value;
  // ignore: unused_field
  final $Res Function(BestBuyProduct) _then;

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
abstract class _$BestBuyProductCopyWith<$Res>
    implements $BestBuyProductCopyWith<$Res> {
  factory _$BestBuyProductCopyWith(
          _BestBuyProduct value, $Res Function(_BestBuyProduct) then) =
      __$BestBuyProductCopyWithImpl<$Res>;
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
class __$BestBuyProductCopyWithImpl<$Res>
    extends _$BestBuyProductCopyWithImpl<$Res>
    implements _$BestBuyProductCopyWith<$Res> {
  __$BestBuyProductCopyWithImpl(
      _BestBuyProduct _value, $Res Function(_BestBuyProduct) _then)
      : super(_value, (v) => _then(v as _BestBuyProduct));

  @override
  _BestBuyProduct get _value => super._value as _BestBuyProduct;

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
    return _then(_BestBuyProduct(
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

@JsonSerializable()

/// @nodoc
class _$_BestBuyProduct implements _BestBuyProduct {
  const _$_BestBuyProduct(
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

  factory _$_BestBuyProduct.fromJson(Map<String, dynamic> json) =>
      _$_$_BestBuyProductFromJson(json);

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
    return 'BestBuyProduct(sku: $sku, name: $name, image: $image, regularPrice: $regularPrice, salePrice: $salePrice, onSale: $onSale, shortDescription: $shortDescription)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BestBuyProduct &&
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
  _$BestBuyProductCopyWith<_BestBuyProduct> get copyWith =>
      __$BestBuyProductCopyWithImpl<_BestBuyProduct>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_BestBuyProductToJson(this);
  }
}

abstract class _BestBuyProduct implements BestBuyProduct {
  const factory _BestBuyProduct(
      {@required int sku,
      @required String name,
      @required String image,
      @required double regularPrice,
      @required double salePrice,
      @required bool onSale,
      String shortDescription}) = _$_BestBuyProduct;

  factory _BestBuyProduct.fromJson(Map<String, dynamic> json) =
      _$_BestBuyProduct.fromJson;

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
  _$BestBuyProductCopyWith<_BestBuyProduct> get copyWith;
}
