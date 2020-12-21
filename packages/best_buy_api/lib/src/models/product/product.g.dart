// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Product _$_$_ProductFromJson(Map<String, dynamic> json) {
  return _$_Product(
    sku: json['sku'] as int,
    name: json['name'] as String,
    regularPrice: (json['regularPrice'] as num)?.toDouble(),
    salePrice: (json['salePrice'] as num)?.toDouble(),
    image: json['image'] as String,
    shortDescription: json['shortDescription'] as String,
  );
}

Map<String, dynamic> _$_$_ProductToJson(_$_Product instance) =>
    <String, dynamic>{
      'sku': instance.sku,
      'name': instance.name,
      'regularPrice': instance.regularPrice,
      'salePrice': instance.salePrice,
      'image': instance.image,
      'shortDescription': instance.shortDescription,
    };
