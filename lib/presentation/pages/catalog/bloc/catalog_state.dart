part of 'catalog_bloc.dart';

class CatalogState extends Equatable {
  const CatalogState({
    this.products,
    this.categories,
    this.isLoading,
    this.selectedIndex,
  });

  final List<Product>? products;
  final List<MainCategory>? categories;
  final bool? isLoading;
  final int? selectedIndex;

  CatalogState copyWith({
    List<Product>? products,
    List<MainCategory>? categories,
    List<String>? advertisments,
    bool? isLoading,
    int? selectedIndex,
  }) {
    return CatalogState(
      products: products ?? this.products,
      categories: categories ?? this.categories,
      isLoading: isLoading ?? this.isLoading,
      selectedIndex: selectedIndex ?? this.selectedIndex,
    );
  }

  @override
  List<Object?> get props => [products, categories, isLoading, selectedIndex];
}
