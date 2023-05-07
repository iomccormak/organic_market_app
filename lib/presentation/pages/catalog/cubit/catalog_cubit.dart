import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:organic_market_app/domain/models/product/product.dart';
import 'package:organic_market_app/data/api/service/shop_service.dart';

part 'сatalog_state.dart';

class CatalogCubit extends Cubit<CatalogState> {
  CatalogCubit(this.catalogService) : super(const CatalogState()) {
    fetchAllProducts();
  }

  final ShopService catalogService;

  final int _selectedIndex = 0;
  int get index => _selectedIndex;

  final Map<String, dynamic> _queryParameters = {};
  Map<String, dynamic> get parameters => _queryParameters;

  Future<void> fetchAllProducts({Map<String, dynamic>? params}) async {
    _changeLoading();
    final response = await catalogService.fetchAllProducts(params: params);
    emit(state.copyWith(
      products: response ?? [],
    ));
    _changeLoading();
  }

  void _changeLoading() {
    emit(state.copyWith(isLoading: !(state.isLoading ?? false)));
  }
}
