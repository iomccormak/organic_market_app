import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:organic_market_app/data/api/network/network_manager.dart';
import 'package:organic_market_app/domain/models/categories/main_category.dart';
import 'package:organic_market_app/domain/models/product/product.dart';
import 'package:organic_market_app/domain/models/repository/repository.dart';

part 'catalog_event.dart';
part 'catalog_state.dart';

class CatalogBloc extends Bloc<CatalogEvent, CatalogState> {
  CatalogBloc(this.catalogService, this.repository)
      : super(const CatalogState()) {
    on<FetchAllProducts>(_onFetchAllProducts);
  }

  final NetworkManager catalogService;
  final Repository repository;

  Future<void> _onFetchAllProducts(
    FetchAllProducts event,
    Emitter<CatalogState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));
    final response = await catalogService.getProducts();
    final categories = await repository.getCategories();
    emit(state.copyWith(
      products: response,
      categories: categories,
      isLoading: false,
    ));
  }
}
