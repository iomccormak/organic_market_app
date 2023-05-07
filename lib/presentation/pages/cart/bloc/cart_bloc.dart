import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:organic_market_app/domain/models/cart/cart.dart';
import 'package:organic_market_app/domain/models/product/product.dart';

part 'cart_event.dart';
part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc() : super(CartInitial()) {
    on<CartInitialized>(_onInitialized);
    on<CartProductAdded>(_onProductAdded);
    on<CartProductRemoved>(_onProductRemoved);
    on<CartProductIncremented>(_onProductIncremented);
    on<CartProductDecremented>(_onProductDecremented);
    on<CartCheckOut>(_onCartCheckout);
  }

  List<Product> _items = <Product>[];

  Future<void> _onInitialized(
      CartInitialized event, Emitter<CartState> emit) async {
    emit(CartInitial());
    try {
      final items = _items;
      emit(CartLoad(cart: Cart(products: [...items])));
    } catch (_) {
      emit(CartError());
    }
  }

  Future<void> _onCartCheckout(
      CartCheckOut event, Emitter<CartState> emit) async {
    emit(CartInitial());
    try {
      for (Product p in _items) {
        p.count = 1;
      }
      _items = [];
      final items = [];
      emit(CartLoad(cart: Cart(products: [...items])));
    } catch (_) {
      emit(CartError());
    }
  }

  Future<void> _onProductIncremented(
      CartProductIncremented event, Emitter<CartState> emit) async {
    final state = this.state;
    if (state is CartLoad) {
      try {
        emit(
          CartLoad(
            cart: Cart(
              products: [..._items],
            ),
            isProductUpdated: false,
          ),
        );
        incrementProduct(event.product);
        emit(
          CartLoad(
            cart: Cart(
              products: [..._items],
            ),
            isProductUpdated: true,
            totalPrice: state.totalPrice + event.product.price!.toDouble(),
          ),
        );
      } catch (_) {
        emit(CartError());
      }
    }
  }

  Future<void> _onProductDecremented(
      CartProductDecremented event, Emitter<CartState> emit) async {
    final state = this.state;
    if (state is CartLoad) {
      try {
        emit(
          CartLoad(
            cart: Cart(
              products: [..._items],
            ),
            isProductUpdated: false,
          ),
        );
        decrementProduct(event.product);
        emit(
          CartLoad(
            cart: Cart(
              products: [..._items],
            ),
            isProductUpdated: true,
            totalPrice: state.totalPrice - event.product.price!.toDouble(),
          ),
        );
      } catch (_) {
        emit(CartError());
      }
    }
  }

  Future<void> _onProductAdded(
      CartProductAdded event, Emitter<CartState> emit) async {
    final state = this.state;
    if (state is CartLoad) {
      try {
        emit(
          CartLoad(
            cart: Cart(
              products: [..._items],
            ),
            isProductUpdated: false,
          ),
        );
        addItemToCart(event.product);
        emit(
          CartLoad(
            cart: Cart(
              products: [..._items],
            ),
            isProductUpdated: true,
            totalPrice: state.totalPrice + event.product.price!.toDouble(),
          ),
        );
      } catch (_) {
        emit(CartError());
      }
    }
  }

  bool isProductInCart(Product product) {
    return _items
        .any((checkedProduct) => checkedProduct.title == product.title);
  }

  void addItemToCart(Product product) {
    if (isProductInCart(product)) {
      incrementProduct(product);
    } else {
      _items.add(product);
    }
  }

  void removeItemFromCart(Product product) => _items.remove(product);

  void _onProductRemoved(CartProductRemoved event, Emitter<CartState> emit) {
    final state = this.state;
    if (state is CartLoad) {
      try {
        removeItemFromCart(event.product);
        if (_items.isEmpty) {
          emit(
            const CartLoad(
              totalPrice: 0,
            ),
          );
        }
        emit(
          CartLoad(
            cart: Cart(
              products: [...state.cart.products]..remove(event.product),
            ),
            totalPrice: state.totalPrice -
                (event.product.count * event.product.price!.toDouble()),
          ),
        );
      } catch (_) {
        emit(CartError());
      }
    }
  }

  void incrementProduct(Product product) {
    product.count++;
  }

  void decrementProduct(Product product) {
    if (product.count > 1) {
      product.count--;
    } else {
      _items.remove(product);
    }
  }
}
