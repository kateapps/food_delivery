import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.freezed.dart';
part 'product.g.dart';

@freezed
class Product with _$Product {
  const Product._();
  factory Product(
    int id,
    int categoryId,
    String name,
    String description,
    int price,
    int portion,
    String imgUrl, {
    @Default(0) int count,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}
