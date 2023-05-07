import 'package:equatable/equatable.dart';
import 'package:organic_market_app/domain/models/order/order.dart';
import 'package:organic_market_app/domain/models/product/product.dart';

class MyOrders extends Equatable {
  const MyOrders({this.orders = const <Order>[]});

  final List<Order> orders;

  @override
  List<Object> get props => [orders];
}
