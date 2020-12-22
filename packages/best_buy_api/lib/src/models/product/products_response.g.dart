// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductsResponse _$_$_ProductsResponseFromJson(Map<String, dynamic> json) {
  return _$_ProductsResponse(
    products: (json['products'] as List)
        ?.map((e) =>
            e == null ? null : Product.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    total: json['total'] as int,
  );
}

Map<String, dynamic> _$_$_ProductsResponseToJson(
        _$_ProductsResponse instance) =>
    <String, dynamic>{
      'products': instance.products,
      'total': instance.total,
    };
