import 'package:organic_market_app/domain/models/main_category.dart';

class Product {
  int id;
  String title;
  String description;
  //MainCategory category;
  String image;
  double price;

  Product({
    required this.id,
    required this.title,
    required this.description,
    required this.image,
    required this.price,
  });

  Product copyWith({
    int? id,
    String? title,
    String? description,
    //MainCategory category;
    String? image,
    double? price,
  }) {
    return Product(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      image: image ?? this.image,
      price: price ?? this.price,
    );
  }

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
