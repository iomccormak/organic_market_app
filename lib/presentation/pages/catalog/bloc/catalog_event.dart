part of 'catalog_bloc.dart';

abstract class CatalogEvent extends Equatable {
  const CatalogEvent();

  @override
  List<Object?> get props => [];
}

class FetchAllProducts extends CatalogEvent {
  const FetchAllProducts();

  @override
  List<Object?> get props => [];
}
