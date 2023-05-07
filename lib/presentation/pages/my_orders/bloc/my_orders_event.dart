part of 'my_orders_bloc.dart';

abstract class MyOrdersEvent extends Equatable {
  const MyOrdersEvent();

  @override
  List<Object> get props => [];
}

class MyOrdersInitialized extends MyOrdersEvent {
  @override
  List<Object> get props => [];
}

class MyOrdersAdded extends MyOrdersEvent {
  const MyOrdersAdded({required this.order});

  final Order order;

  @override
  List<Object> get props => [order];
}
