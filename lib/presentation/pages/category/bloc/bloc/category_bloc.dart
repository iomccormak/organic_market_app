import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'category_event.dart';
part 'category_state.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  CategoryBloc() : super(CategoryInitial()) {
    on<SortByType>(_onSortByType);
  }

  Future<void> _onSortByType(
      SortByType event, Emitter<CategoryState> emit) async {}
}
