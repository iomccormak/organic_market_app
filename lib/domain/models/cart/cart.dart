import 'package:equatable/equatable.dart';
import 'package:organic_market_app/domain/models/product/product.dart';

class Cart extends Equatable {
  const Cart({this.products = const <Product>[]});

  final List<Product> products;

  int getAmount() {
    int amount = 0;
    for (Product p in products) {
      amount += p.count;
    }
    return amount;
  }

  List<int> getAmountOfEach() {
    List<int> amount = [];
    for (Product p in products) {
      amount.add(p.count);
    }
    return amount;
  }

  @override
  List<Object> get props => [products];
}
