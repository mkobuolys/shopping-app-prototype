// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Product _$_$_ProductFromJson(Map<String, dynamic> json) {
  return _$_Product(
    sku: json['sku'] as int,
    name: json['name'] as String,
    image: json['image'] as String,
    regularPrice: (json['regularPrice'] as num)?.toDouble(),
    salePrice: (json['salePrice'] as num)?.toDouble(),
    onSale: json['onSale'] as bool,
    description: json['description'] as String,
    customerReviewAverage: (json['customerReviewAverage'] as num)?.toDouble(),
  );
}

Map<String, dynamic> _$_$_ProductToJson(_$_Product instance) =>
    <String, dynamic>{
      'sku': instance.sku,
      'name': instance.name,
      'image': instance.image,
      'regularPrice': instance.regularPrice,
      'salePrice': instance.salePrice,
      'onSale': instance.onSale,
      'description': instance.description,
      'customerReviewAverage': instance.customerReviewAverage,
    };
