import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:organic_market_app/domain/models/order/order.dart';

part 'my_orders_event.dart';
part 'my_orders_state.dart';

class MyOrdersBloc extends Bloc<MyOrdersEvent, MyOrdersState> {
  MyOrdersBloc() : super(MyOrdersInitial()) {
    on<MyOrdersInitialized>(_onInitialized);
    on<MyOrdersAdded>(_onAdded);
  }

  final orders = <Order>[];

  void _onInitialized(MyOrdersInitialized event, Emitter<MyOrdersState> emit) {
    emit(MyOrdersInitial());
    try {
      emit(
        MyOrdersLoad(
          order: Order(
            products: const [],
            date: DateTime.now(),
          ),
        ),
      );
    } catch (_) {
      emit(MyOrdersError());
    }
  }

  void _onAdded(MyOrdersAdded event, Emitter<MyOrdersState> emit) {
    emit(MyOrdersInitial());
    try {
      emit(
        MyOrdersLoad(
          order: event.order,
        ),
      );
    } catch (_) {
      emit(MyOrdersError());
    }
  }
}
