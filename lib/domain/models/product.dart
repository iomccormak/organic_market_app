class Product {
  final String title;
  final String description;
  final List<String> image;
  final int price;
  final List<String> weight;
  final List<int> discount;
  bool? organic;
  bool? expressDelivery;

  Product({
    required this.title,
    required this.description,
    required this.image,
    required this.price,
    required this.weight,
    required this.discount,
    this.organic = false,
    this.expressDelivery = false,
  });
}
