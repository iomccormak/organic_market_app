import 'package:equatable/equatable.dart';
import 'package:organic_market_app/domain/models/order/order_status.dart';
import 'package:organic_market_app/domain/models/product/product.dart';

class Order extends Equatable {
  const Order({
    required this.products,
    required this.date,
    this.status = OrderStatus.delievered,
  });

  final List<Product> products;
  final DateTime date;
  final OrderStatus status;

  @override
  List<Object> get props => [products, date, status];
}
