// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'best_buy_product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BestBuyProduct _$_$_BestBuyProductFromJson(Map<String, dynamic> json) {
  return _$_BestBuyProduct(
    sku: json['sku'] as int,
    name: json['name'] as String,
    image: json['image'] as String,
    regularPrice: (json['regularPrice'] as num)?.toDouble(),
    salePrice: (json['salePrice'] as num)?.toDouble(),
    onSale: json['onSale'] as bool,
    shortDescription: json['shortDescription'] as String,
  );
}

Map<String, dynamic> _$_$_BestBuyProductToJson(_$_BestBuyProduct instance) =>
    <String, dynamic>{
      'sku': instance.sku,
      'name': instance.name,
      'image': instance.image,
      'regularPrice': instance.regularPrice,
      'salePrice': instance.salePrice,
      'onSale': instance.onSale,
      'shortDescription': instance.shortDescription,
    };
