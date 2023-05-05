part of 'favorites_bloc.dart';

abstract class FavoritesState extends Equatable {
  const FavoritesState();

  @override
  List<Object> get props => [];
}

class FavoritesInitial extends FavoritesState {
  @override
  List<Object> get props => [];
}

class FavoritesLoad extends FavoritesState {
  const FavoritesLoad({
    this.favoritesModel = const Favorites(),
    this.isProductUpdated = false,
  });

  final Favorites favoritesModel;
  final bool isProductUpdated;

  @override
  List<Object> get props => [favoritesModel, isProductUpdated];
}

class FavoritesError extends FavoritesState {
  @override
  List<Object> get props => [];
}
