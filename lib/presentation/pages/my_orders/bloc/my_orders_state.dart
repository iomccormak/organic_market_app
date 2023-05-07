part of 'my_orders_bloc.dart';

abstract class MyOrdersState extends Equatable {
  const MyOrdersState();

  @override
  List<Object> get props => [];
}

class MyOrdersInitial extends MyOrdersState {
  @override
  List<Object> get props => [];
}

class MyOrdersLoad extends MyOrdersState {
  const MyOrdersLoad({
    required this.orders,
  });

  final Orders orders;

  @override
  List<Object> get props => [orders];
}

class MyOrdersError extends MyOrdersState {
  @override
  List<Object> get props => [];
}
