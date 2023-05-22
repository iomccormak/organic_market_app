import 'dart:convert';

class Product {
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

  final int? id;
  final String? title;
  final double? price;
  final String? description;
  final String? category;
  final String? image;
  bool isFavorite;
  int count;

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json["id"],
      title: json["title"],
      price: (json['price'] as num?)?.toDouble(),
      description: json["description"],
      category: json["category"],
      image: json["image"],
    );
  }
}

List<Product> productResponseFromJson(String str) {
  List<dynamic> temp = json.decode(str);
  return List<Product>.from(temp.map((x) => Product.fromJson(x)));
}
