part of 'my_orders_bloc.dart';

abstract class MyOrdersState extends Equatable {
  const MyOrdersState();

  @override
  List<Object> get props => [];
}

class MyOrdersInitial extends MyOrdersState {}

class MyOrdersLoad extends MyOrdersState {
  const MyOrdersLoad({
    required this.order,
  });

  final Order order;

  @override
  List<Object> get props => [order];
}

class MyOrdersError extends MyOrdersState {
  @override
  List<Object> get props => [];
}
