import 'package:equatable/equatable.dart';
import 'package:organic_market_app/domain/models/order/order_status.dart';
import 'package:organic_market_app/domain/models/product/product.dart';

class Order extends Equatable {
  const Order({
    required this.products,
    required this.amount,
    required this.date,
    this.status = OrderStatus.delievered,
    this.discount = 0.1,
    this.deliveryPrice = 99,
  });

  final List<Product> products;
  final List<int> amount;
  final DateTime date;
  final OrderStatus status;
  final double discount;
  final double deliveryPrice;

  int getAmount() {
    return amount.reduce((a, b) => a + b);
  }

  double getPrice() {
    double price = 0;
    for (int i = 0; i < amount.length; i++) {
      price += (products[i].price! * (1 - discount)) * amount[i];
    }
    return price + deliveryPrice;
  }

  @override
  List<Object> get props => [products, date, status];
}
