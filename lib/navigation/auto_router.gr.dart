// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i15;
import 'package:auto_route/empty_router_widgets.dart' as _i2;
import 'package:flutter/cupertino.dart' as _i17;
import 'package:flutter/material.dart' as _i16;

import '../domain/models/order/order.dart' as _i19;
import '../domain/models/product/product.dart' as _i18;
import '../presentation/pages/ordering/ordering_page.dart' as _i10;
import '../presentation/pages/cart/cart_page.dart' as _i9;
import '../presentation/pages/catalog/catalog_page.dart' as _i6;
import '../presentation/pages/category/category_page.dart' as _i7;
import '../presentation/pages/favorites/favorites_page.dart' as _i8;
import '../presentation/pages/home/home_page.dart' as _i4;
import '../presentation/pages/item/item_page.dart' as _i5;
import '../presentation/pages/main/main_page.dart' as _i1;
import '../presentation/pages/my_orders/my_orders_page.dart' as _i13;
import '../presentation/pages/order/order_page.dart' as _i14;
import '../presentation/pages/personal_info/personal_info_page.dart' as _i12;
import '../presentation/pages/profile/profile_page.dart' as _i11;
import '../presentation/pages/search/search_page.dart' as _i3;

class AppRouter extends _i15.RootStackRouter {
  AppRouter([_i16.GlobalKey<_i16.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i15.PageFactory> pagesMap = {
    MainRoute.name: (routeData) {
      return _i15.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.MainPage(),
      );
    },
    HomeRouter.name: (routeData) {
      return _i15.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.EmptyRouterPage(),
      );
    },
    CatalogRouter.name: (routeData) {
      return _i15.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.EmptyRouterPage(),
      );
    },
    SearchRouter.name: (routeData) {
      return _i15.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.SearchPage(),
      );
    },
    CartRouter.name: (routeData) {
      return _i15.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.EmptyRouterPage(),
      );
    },
    ProfileRouter.name: (routeData) {
      return _i15.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.EmptyRouterPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i15.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.HomePage(),
      );
    },
    ItemRoute.name: (routeData) {
      final args = routeData.argsAs<ItemRouteArgs>();
      return _i15.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i5.ItemPage(
          key: args.key,
          product: args.product,
        ),
      );
    },
    CatalogRoute.name: (routeData) {
      return _i15.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i6.CatalogPage(),
      );
    },
    CategoryRoute.name: (routeData) {
      return _i15.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i7.CategoryPage(),
      );
    },
    FavoritesRoute.name: (routeData) {
      return _i15.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i8.FavoritesPage(),
      );
    },
    CartRoute.name: (routeData) {
      return _i15.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i9.CartPage(),
      );
    },
    OrderingRoute.name: (routeData) {
      final args = routeData.argsAs<OrderingRouteArgs>();
      return _i15.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i10.OrderingPage(
          key: args.key,
          products: args.products,
          totalPrice: args.totalPrice,
        ),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i15.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i11.ProfilePage(),
      );
    },
    PersonalInfoRoute.name: (routeData) {
      final args = routeData.argsAs<PersonalInfoRouteArgs>(
          orElse: () => const PersonalInfoRouteArgs());
      return _i15.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i12.PersonalInfoPage(key: args.key),
      );
    },
    MyOrdersRoute.name: (routeData) {
      return _i15.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i13.MyOrdersPage(),
      );
    },
    OrderRoute.name: (routeData) {
      final args = routeData.argsAs<OrderRouteArgs>();
      return _i15.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i14.OrderPage(
          key: args.key,
          order: args.order,
        ),
      );
    },
  };

  @override
  List<_i15.RouteConfig> get routes => [
        _i15.RouteConfig(
          MainRoute.name,
          path: '/',
          children: [
            _i15.RouteConfig(
              HomeRouter.name,
              path: 'home',
              parent: MainRoute.name,
              children: [
                _i15.RouteConfig(
                  HomeRoute.name,
                  path: '',
                  parent: HomeRouter.name,
                ),
                _i15.RouteConfig(
                  ItemRoute.name,
                  path: ':product',
                  parent: HomeRouter.name,
                ),
              ],
            ),
            _i15.RouteConfig(
              CatalogRouter.name,
              path: 'catalog',
              parent: MainRoute.name,
              children: [
                _i15.RouteConfig(
                  CatalogRoute.name,
                  path: '',
                  parent: CatalogRouter.name,
                ),
                _i15.RouteConfig(
                  CategoryRoute.name,
                  path: 'category',
                  parent: CatalogRouter.name,
                ),
                _i15.RouteConfig(
                  ItemRoute.name,
                  path: ':product',
                  parent: CatalogRouter.name,
                ),
                _i15.RouteConfig(
                  FavoritesRoute.name,
                  path: 'favorites',
                  parent: CatalogRouter.name,
                ),
              ],
            ),
            _i15.RouteConfig(
              SearchRouter.name,
              path: 'search',
              parent: MainRoute.name,
            ),
            _i15.RouteConfig(
              CartRouter.name,
              path: 'cart',
              parent: MainRoute.name,
              children: [
                _i15.RouteConfig(
                  CartRoute.name,
                  path: '',
                  parent: CartRouter.name,
                ),
                _i15.RouteConfig(
                  OrderingRoute.name,
                  path: ':ordering',
                  parent: CartRouter.name,
                ),
              ],
            ),
            _i15.RouteConfig(
              ProfileRouter.name,
              path: 'profile',
              parent: MainRoute.name,
              children: [
                _i15.RouteConfig(
                  ProfileRoute.name,
                  path: '',
                  parent: ProfileRouter.name,
                ),
                _i15.RouteConfig(
                  PersonalInfoRoute.name,
                  path: ':personalInfo',
                  parent: ProfileRouter.name,
                ),
                _i15.RouteConfig(
                  MyOrdersRoute.name,
                  path: ':myOrders',
                  parent: ProfileRouter.name,
                ),
                _i15.RouteConfig(
                  OrderRoute.name,
                  path: ':order',
                  parent: ProfileRouter.name,
                ),
              ],
            ),
          ],
        )
      ];
}

/// generated route for
/// [_i1.MainPage]
class MainRoute extends _i15.PageRouteInfo<void> {
  const MainRoute({List<_i15.PageRouteInfo>? children})
      : super(
          MainRoute.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'MainRoute';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class HomeRouter extends _i15.PageRouteInfo<void> {
  const HomeRouter({List<_i15.PageRouteInfo>? children})
      : super(
          HomeRouter.name,
          path: 'home',
          initialChildren: children,
        );

  static const String name = 'HomeRouter';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class CatalogRouter extends _i15.PageRouteInfo<void> {
  const CatalogRouter({List<_i15.PageRouteInfo>? children})
      : super(
          CatalogRouter.name,
          path: 'catalog',
          initialChildren: children,
        );

  static const String name = 'CatalogRouter';
}

/// generated route for
/// [_i3.SearchPage]
class SearchRouter extends _i15.PageRouteInfo<void> {
  const SearchRouter()
      : super(
          SearchRouter.name,
          path: 'search',
        );

  static const String name = 'SearchRouter';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class CartRouter extends _i15.PageRouteInfo<void> {
  const CartRouter({List<_i15.PageRouteInfo>? children})
      : super(
          CartRouter.name,
          path: 'cart',
          initialChildren: children,
        );

  static const String name = 'CartRouter';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class ProfileRouter extends _i15.PageRouteInfo<void> {
  const ProfileRouter({List<_i15.PageRouteInfo>? children})
      : super(
          ProfileRouter.name,
          path: 'profile',
          initialChildren: children,
        );

  static const String name = 'ProfileRouter';
}

/// generated route for
/// [_i4.HomePage]
class HomeRoute extends _i15.PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: '',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i5.ItemPage]
class ItemRoute extends _i15.PageRouteInfo<ItemRouteArgs> {
  ItemRoute({
    _i17.Key? key,
    required _i18.Product product,
  }) : super(
          ItemRoute.name,
          path: ':product',
          args: ItemRouteArgs(
            key: key,
            product: product,
          ),
        );

  static const String name = 'ItemRoute';
}

class ItemRouteArgs {
  const ItemRouteArgs({
    this.key,
    required this.product,
  });

  final _i17.Key? key;

  final _i18.Product product;

  @override
  String toString() {
    return 'ItemRouteArgs{key: $key, product: $product}';
  }
}

/// generated route for
/// [_i6.CatalogPage]
class CatalogRoute extends _i15.PageRouteInfo<void> {
  const CatalogRoute()
      : super(
          CatalogRoute.name,
          path: '',
        );

  static const String name = 'CatalogRoute';
}

/// generated route for
/// [_i7.CategoryPage]
class CategoryRoute extends _i15.PageRouteInfo<void> {
  const CategoryRoute()
      : super(
          CategoryRoute.name,
          path: 'category',
        );

  static const String name = 'CategoryRoute';
}

/// generated route for
/// [_i8.FavoritesPage]
class FavoritesRoute extends _i15.PageRouteInfo<void> {
  const FavoritesRoute()
      : super(
          FavoritesRoute.name,
          path: 'favorites',
        );

  static const String name = 'FavoritesRoute';
}

/// generated route for
/// [_i9.CartPage]
class CartRoute extends _i15.PageRouteInfo<void> {
  const CartRoute()
      : super(
          CartRoute.name,
          path: '',
        );

  static const String name = 'CartRoute';
}

/// generated route for
/// [_i10.OrderingPage]
class OrderingRoute extends _i15.PageRouteInfo<OrderingRouteArgs> {
  OrderingRoute({
    _i17.Key? key,
    required List<_i18.Product> products,
    required double totalPrice,
  }) : super(
          OrderingRoute.name,
          path: ':ordering',
          args: OrderingRouteArgs(
            key: key,
            products: products,
            totalPrice: totalPrice,
          ),
        );

  static const String name = 'OrderingRoute';
}

class OrderingRouteArgs {
  const OrderingRouteArgs({
    this.key,
    required this.products,
    required this.totalPrice,
  });

  final _i17.Key? key;

  final List<_i18.Product> products;

  final double totalPrice;

  @override
  String toString() {
    return 'OrderingRouteArgs{key: $key, products: $products, totalPrice: $totalPrice}';
  }
}

/// generated route for
/// [_i11.ProfilePage]
class ProfileRoute extends _i15.PageRouteInfo<void> {
  const ProfileRoute()
      : super(
          ProfileRoute.name,
          path: '',
        );

  static const String name = 'ProfileRoute';
}

/// generated route for
/// [_i12.PersonalInfoPage]
class PersonalInfoRoute extends _i15.PageRouteInfo<PersonalInfoRouteArgs> {
  PersonalInfoRoute({_i17.Key? key})
      : super(
          PersonalInfoRoute.name,
          path: ':personalInfo',
          args: PersonalInfoRouteArgs(key: key),
        );

  static const String name = 'PersonalInfoRoute';
}

class PersonalInfoRouteArgs {
  const PersonalInfoRouteArgs({this.key});

  final _i17.Key? key;

  @override
  String toString() {
    return 'PersonalInfoRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i13.MyOrdersPage]
class MyOrdersRoute extends _i15.PageRouteInfo<void> {
  const MyOrdersRoute()
      : super(
          MyOrdersRoute.name,
          path: ':myOrders',
        );

  static const String name = 'MyOrdersRoute';
}

/// generated route for
/// [_i14.OrderPage]
class OrderRoute extends _i15.PageRouteInfo<OrderRouteArgs> {
  OrderRoute({
    _i17.Key? key,
    required _i19.Order order,
  }) : super(
          OrderRoute.name,
          path: ':order',
          args: OrderRouteArgs(
            key: key,
            order: order,
          ),
        );

  static const String name = 'OrderRoute';
}

class OrderRouteArgs {
  const OrderRouteArgs({
    this.key,
    required this.order,
  });

  final _i17.Key? key;

  final _i19.Order order;

  @override
  String toString() {
    return 'OrderRouteArgs{key: $key, order: $order}';
  }
}
