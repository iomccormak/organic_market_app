import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:organic_market_app/domain/models/favorites/favorites.dart';
import 'package:organic_market_app/domain/models/product/product.dart';

part 'favorites_event.dart';
part 'favorites_state.dart';

class FavoritesBloc extends Bloc<FavoritesEvent, FavoritesState> {
  FavoritesBloc() : super(FavoritesInitial()) {
    on<FavoritesInitialized>(_onInitialized);
    on<FavoritesProductAdded>(_onProductAdded);
    on<FavoritesProductRemoved>(_onProductRemoved);
  }
  final _favProducts = <Product>[];

  void _onInitialized(
      FavoritesInitialized event, Emitter<FavoritesState> emit) {
    emit(FavoritesInitial());
    try {
      final items = _favProducts;
      emit(FavoritesLoad(favoritesModel: Favorites(products: [...items])));
    } catch (_) {
      emit(FavoritesError());
    }
  }

  Future<void> _onProductAdded(
      FavoritesProductAdded event, Emitter<FavoritesState> emit) async {
    final state = this.state;
    if (state is FavoritesLoad) {
      try {
        addItemToFavorites(event.product);
        emit(
          FavoritesLoad(
            favoritesModel: Favorites(
              products: [..._favProducts],
            ),
            isProductUpdated: false,
          ),
        );
        emit(
          FavoritesLoad(
            favoritesModel: Favorites(
              products: [..._favProducts],
            ),
            isProductUpdated: true,
          ),
        );
      } catch (_) {
        emit(FavoritesError());
      }
    }
  }

  void addItemToFavorites(Product product) {
    product.isFavorite = true;
    if (!isProductInFavorites(product)) {
      _favProducts.add(product);
    }
  }

  bool isProductInFavorites(Product product) {
    return _favProducts
        .any((checkedProduct) => checkedProduct.title == product.title);
  }

  Future<void> _onProductRemoved(
      FavoritesProductRemoved event, Emitter<FavoritesState> emit) async {
    final state = this.state;
    if (state is FavoritesLoad) {
      try {
        removeItemFromFavorites(event.product);
        emit(
          FavoritesLoad(
            favoritesModel: Favorites(
              products: [..._favProducts],
            ),
            isProductUpdated: false,
          ),
        );
        emit(
          FavoritesLoad(
            favoritesModel: Favorites(
              products: [..._favProducts],
            ),
            isProductUpdated: true,
          ),
        );
      } catch (_) {
        emit(FavoritesError());
      }
    }
  }

  void removeItemFromFavorites(Product product) {
    product.isFavorite = false;
    _favProducts.remove(product);
  }
}
