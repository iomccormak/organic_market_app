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
import 'package:auto_route/auto_route.dart' as _i9;
import 'package:flutter/material.dart' as _i10;

import '../domain/models/order.dart' as _i11;
import '../domain/models/product.dart' as _i12;
import '../presentation/pages/cart/cart_page.dart' as _i7;
import '../presentation/pages/catalog/catalog_page.dart' as _i5;
import '../presentation/pages/home/home_page.dart' as _i4;
import '../presentation/pages/item/item_page.dart' as _i3;
import '../presentation/pages/main/main_page.dart' as _i1;
import '../presentation/pages/order/order_page.dart' as _i2;
import '../presentation/pages/profile/profile_page.dart' as _i8;
import '../presentation/pages/search/search_page.dart' as _i6;

class AppRouter extends _i9.RootStackRouter {
  AppRouter([_i10.GlobalKey<_i10.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i9.PageFactory> pagesMap = {
    MainRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.MainPage(),
      );
    },
    OrderRoute.name: (routeData) {
      final args = routeData.argsAs<OrderRouteArgs>();
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i2.OrderPage(
          key: args.key,
          order: args.order,
        ),
      );
    },
    ItemRoute.name: (routeData) {
      final args = routeData.argsAs<ItemRouteArgs>();
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i3.ItemPage(
          key: args.key,
          product: args.product,
        ),
      );
    },
    HomeRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.HomePage(),
      );
    },
    CatalogRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.CatalogPage(),
      );
    },
    SearchRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i6.SearchPage(),
      );
    },
    CartRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i7.CartPage(),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i8.ProfilePage(),
      );
    },
  };

  @override
  List<_i9.RouteConfig> get routes => [
        _i9.RouteConfig(
          MainRoute.name,
          path: '/',
          children: [
            _i9.RouteConfig(
              HomeRoute.name,
              path: 'home-page',
              parent: MainRoute.name,
            ),
            _i9.RouteConfig(
              CatalogRoute.name,
              path: 'catalog-page',
              parent: MainRoute.name,
            ),
            _i9.RouteConfig(
              SearchRoute.name,
              path: 'search-page',
              parent: MainRoute.name,
            ),
            _i9.RouteConfig(
              CartRoute.name,
              path: 'cart-page',
              parent: MainRoute.name,
            ),
            _i9.RouteConfig(
              ProfileRoute.name,
              path: 'profile-page',
              parent: MainRoute.name,
            ),
          ],
        ),
        _i9.RouteConfig(
          OrderRoute.name,
          path: '/order-page',
        ),
        _i9.RouteConfig(
          ItemRoute.name,
          path: '/item-page',
        ),
      ];
}

/// generated route for
/// [_i1.MainPage]
class MainRoute extends _i9.PageRouteInfo<void> {
  const MainRoute({List<_i9.PageRouteInfo>? children})
      : super(
          MainRoute.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'MainRoute';
}

/// generated route for
/// [_i2.OrderPage]
class OrderRoute extends _i9.PageRouteInfo<OrderRouteArgs> {
  OrderRoute({
    _i10.Key? key,
    required _i11.Order order,
  }) : super(
          OrderRoute.name,
          path: '/order-page',
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

  final _i10.Key? key;

  final _i11.Order order;

  @override
  String toString() {
    return 'OrderRouteArgs{key: $key, order: $order}';
  }
}

/// generated route for
/// [_i3.ItemPage]
class ItemRoute extends _i9.PageRouteInfo<ItemRouteArgs> {
  ItemRoute({
    _i10.Key? key,
    required _i12.Product product,
  }) : super(
          ItemRoute.name,
          path: '/item-page',
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

  final _i10.Key? key;

  final _i12.Product product;

  @override
  String toString() {
    return 'ItemRouteArgs{key: $key, product: $product}';
  }
}

/// generated route for
/// [_i4.HomePage]
class HomeRoute extends _i9.PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: 'home-page',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i5.CatalogPage]
class CatalogRoute extends _i9.PageRouteInfo<void> {
  const CatalogRoute()
      : super(
          CatalogRoute.name,
          path: 'catalog-page',
        );

  static const String name = 'CatalogRoute';
}

/// generated route for
/// [_i6.SearchPage]
class SearchRoute extends _i9.PageRouteInfo<void> {
  const SearchRoute()
      : super(
          SearchRoute.name,
          path: 'search-page',
        );

  static const String name = 'SearchRoute';
}

/// generated route for
/// [_i7.CartPage]
class CartRoute extends _i9.PageRouteInfo<void> {
  const CartRoute()
      : super(
          CartRoute.name,
          path: 'cart-page',
        );

  static const String name = 'CartRoute';
}

/// generated route for
/// [_i8.ProfilePage]
class ProfileRoute extends _i9.PageRouteInfo<void> {
  const ProfileRoute()
      : super(
          ProfileRoute.name,
          path: 'profile-page',
        );

  static const String name = 'ProfileRoute';
}
