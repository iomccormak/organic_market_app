import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:organic_market_app/domain/models/order/order.dart';
import 'package:organic_market_app/domain/models/order/orders.dart';

part 'my_orders_event.dart';
part 'my_orders_state.dart';

class MyOrdersBloc extends Bloc<MyOrdersEvent, MyOrdersState> {
  MyOrdersBloc() : super(MyOrdersInitial()) {
    on<MyOrdersInitialized>(_onInitialized);
    on<MyOrdersAdded>(_onAdded);
  }

  final orders = <Order>[];

  Future<void> _onInitialized(
      MyOrdersInitialized event, Emitter<MyOrdersState> emit) async {
    emit(MyOrdersInitial());
    try {
      final items = orders;
      emit(MyOrdersLoad(orders: Orders(orders: [...items])));
    } catch (_) {
      emit(MyOrdersError());
    }
  }

  Future<void> _onAdded(
      MyOrdersAdded event, Emitter<MyOrdersState> emit) async {
    final state = this.state;
    if (state is MyOrdersLoad) {
      try {
        addItemToFavorites(event.order);
        emit(
          MyOrdersLoad(
            orders: Orders(
              orders: [...orders],
            ),
          ),
        );
        emit(
          MyOrdersLoad(
            orders: Orders(
              orders: [...orders],
            ),
          ),
        );
      } catch (_) {
        emit(MyOrdersError());
      }
    }
  }

  void addItemToFavorites(Order order) {
    orders.add(order);
  }
}
