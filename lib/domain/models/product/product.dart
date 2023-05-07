import 'package:json_annotation/json_annotation.dart';
import 'package:organic_market_app/domain/models/base_model.dart';

part 'product.g.dart';

@JsonSerializable(createToJson: false)
class Product extends BaseModel {
  final int? id;
  final String? title;
  final double? price;
  final String? description;
  final String? category;
  final String? image;
  bool isFavorite;
  int count;

  Product({
    this.isFavorite = false,
    this.id,
    this.title,
    this.price,
    this.description,
    this.category,
    this.image,
    this.count = 1,
  });

  @override
  fromJson(Map<String, dynamic> json) {
    return _$ProductFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    throw UnimplementedError();
  }
}
