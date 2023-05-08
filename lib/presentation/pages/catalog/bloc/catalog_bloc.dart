import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:organic_market_app/domain/models/product/product.dart';
import 'package:organic_market_app/data/api/service/shop_service.dart';

part 'catalog_event.dart';
part 'catalog_state.dart';

class CatalogBloc extends Bloc<CatalogEvent, CatalogState> {
  CatalogBloc(this.catalogService) : super(const CatalogState()) {
    on<FetchAllProducts>(_onFetchAllProducts);
  }

  final ShopService catalogService;

  Future<void> _onFetchAllProducts(
    FetchAllProducts event,
    Emitter<CatalogState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));
    final response = await catalogService.fetchAllProducts();
    emit(state.copyWith(
      products: response ?? [],
      isLoading: false,
    ));
  }
}
