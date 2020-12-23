import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'product.freezed.dart';
part 'product.g.dart';

@freezed
abstract class Product with _$Product {
  const factory Product({
    @required int sku,
    @required String name,
    @required String image,
    @required double regularPrice,
    @required double salePrice,
    @required bool onSale,
    @required String description,
    double customerReviewAverage,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}
