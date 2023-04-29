part of 'category_bloc.dart';

abstract class CategoryEvent {
  const CategoryEvent();
}

class SortByType extends CategoryEvent {
  final String sortType;

  const SortByType({required this.sortType});
}
