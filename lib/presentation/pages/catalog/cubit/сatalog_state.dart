part of 'catalog_cubit.dart';

class CatalogState extends Equatable {
  const CatalogState({
    this.products,
    this.isLoading,
    this.selectedIndex,
  });

  final List<Product>? products;
  final bool? isLoading;
  final int? selectedIndex;

  CatalogState copyWith({
    List<Product>? products,
    bool? isLoading,
    int? selectedIndex,
  }) {
    return CatalogState(
      products: products ?? this.products,
      isLoading: isLoading ?? this.isLoading,
      selectedIndex: selectedIndex ?? this.selectedIndex,
    );
  }

  @override
  List<Object?> get props => [products, isLoading, selectedIndex];
}
