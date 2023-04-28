import 'package:organic_market_app/domain/models/main_category.dart';

class Product {
  int id;
  String title;
  String description;
  //MainCategory category;
  String image;
  double price;
  List<String> weight;
  List<int> discount;
  bool? organic;
  bool? expressDelivery;

  Product({
    required this.id,
    required this.title,
    required this.description,
    required this.image,
    required this.price,
    this.weight = const [],
    this.discount = const [],
    this.organic = false,
    this.expressDelivery = false,
  });

  factory Product.fromJson(Map<String, dynamic> data) {
    return Product(
      id: data['id'],
      title: data['title'],
      price: double.parse(data['price'].toString()),
      description: data['description'],
      image: data['image'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'price': price,
      'description': description,
      'image': image,
      'price': price,
    };
  }
}
