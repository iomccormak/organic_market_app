import 'package:equatable/equatable.dart';
import 'package:organic_market_app/domain/models/order/order_status.dart';
import 'package:organic_market_app/domain/models/product/product.dart';

class Order extends Equatable {
  const Order({
    required this.products,
    required this.date,
    this.status = OrderStatus.delievered,
    this.discount = 0.1,
    this.deliveryPrice = 99,
  });

  final List<Product> products;
  final DateTime date;
  final OrderStatus status;
  final double discount;
  final double deliveryPrice;

  double getPrice() {
    double price = 0;
    for (Product p in products) {
      price += p.price! * discount;
    }
    return price + deliveryPrice;
  }

  @override
  List<Object> get props => [products, date, status];
}
