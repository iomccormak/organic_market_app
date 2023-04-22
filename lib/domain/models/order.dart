import 'package:organic_market_app/domain/models/order_status.dart';
import 'package:organic_market_app/domain/models/product.dart';

class Order {
  final List<Product> products;
  final DateTime date;
  final OrderStatus status;

  const Order({
    required this.products,
    required this.date,
    required this.status,
  });

  int getPrice() {
    int price = 0;
    for (Product p in products) {
      price += p.price;
    }
    return price;
  }
}
