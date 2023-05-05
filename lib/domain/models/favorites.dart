import 'package:equatable/equatable.dart';
import 'package:organic_market_app/domain/models/product.dart';

class Favorites extends Equatable {
  const Favorites({this.products = const <Product>[]});

  final List<Product> products;

  @override
  List<Object> get props => [products];
}
