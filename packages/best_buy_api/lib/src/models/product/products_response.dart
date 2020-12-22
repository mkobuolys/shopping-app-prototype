import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import 'product.dart';

part 'products_response.freezed.dart';
part 'products_response.g.dart';

@freezed
abstract class ProductsResponse with _$ProductsResponse {
  const factory ProductsResponse({
    @required List<Product> products,
    @required int total,
  }) = _ProductsResponse;

  factory ProductsResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductsResponseFromJson(json);
}
