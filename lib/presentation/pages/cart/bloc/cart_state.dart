part of 'cart_bloc.dart';

abstract class CartState extends Equatable {
  const CartState();

  @override
  List<Object> get props => [];
}

class CartInitial extends CartState {
  @override
  List<Object> get props => [];
}

class CartLoad extends CartState {
  const CartLoad(
      {this.bag = const Cart(),
      this.isProductUpdated = false,
      this.totalPrice = 0});
  final bool isProductUpdated;
  final Cart bag;
  final double totalPrice;

  @override
  List<Object> get props => [bag, isProductUpdated];
}

class CartError extends CartState {
  @override
  List<Object> get props => [];
}
