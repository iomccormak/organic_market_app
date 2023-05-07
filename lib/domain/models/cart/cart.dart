import 'package:equatable/equatable.dart';
import 'package:organic_market_app/domain/models/product/product.dart';

class Cart extends Equatable {
  const Cart({this.products = const <Product>[]});

  final List<Product> products;

  @override
  List<Object> get props => [products];
}
