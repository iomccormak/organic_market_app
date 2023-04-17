import 'package:organic_market_app/domain/models/product_category.dart';

class Product {
  final String title;
  final String description;
  final ProductCategory category;
  final List<String> image;
  final int price;
  final List<String> weight;
  final List<int> discount;
  bool? organic;
  bool? expressDelivery;

  Product({
    required this.title,
    required this.description,
    required this.category,
    required this.image,
    required this.price,
    required this.weight,
    required this.discount,
    this.organic = false,
    this.expressDelivery = false,
  });
}
