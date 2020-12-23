import 'package:freezed_annotation/freezed_annotation.dart';

import 'product.dart';

part 'products_data.freezed.dart';

@freezed
abstract class ProductsData with _$ProductsData {
  const factory ProductsData({
    @required List<Product> products,
    @required int total,
  }) = _ProductsData;
}
