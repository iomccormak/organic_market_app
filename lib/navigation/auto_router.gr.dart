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
import 'package:auto_route/auto_route.dart' as _i14;
import 'package:auto_route/empty_router_widgets.dart' as _i2;
import 'package:flutter/cupertino.dart' as _i16;
import 'package:flutter/material.dart' as _i15;

import '../domain/models/order/order.dart' as _i18;
import '../domain/models/product/product.dart' as _i17;
import '../presentation/pages/cart/cart_page.dart' as _i4;
import '../presentation/pages/catalog/catalog_page.dart' as _i7;
import '../presentation/pages/category/category_page.dart' as _i8;
import '../presentation/pages/favorites/favorites_page.dart' as _i9;
import '../presentation/pages/home/home_page.dart' as _i5;
import '../presentation/pages/item/item_page.dart' as _i6;
import '../presentation/pages/main/main_page.dart' as _i1;
import '../presentation/pages/my_orders/my_orders_page.dart' as _i12;
import '../presentation/pages/order/order_page.dart' as _i13;
import '../presentation/pages/personal_info/personal_info_page.dart' as _i11;
import '../presentation/pages/profile/profile_page.dart' as _i10;
import '../presentation/pages/search/search_page.dart' as _i3;

class AppRouter extends _i14.RootStackRouter {
  AppRouter([_i15.GlobalKey<_i15.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i14.PageFactory> pagesMap = {
    MainRoute.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.MainPage(),
      );
    },
    HomeRouter.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.EmptyRouterPage(),
      );
    },
    CatalogRouter.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.EmptyRouterPage(),
      );
    },
    SearchRouter.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.SearchPage(),
      );
    },
    CartRouter.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.CartPage(),
      );
    },
    ProfileRouter.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.EmptyRouterPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.HomePage(),
      );
    },
    ItemRoute.name: (routeData) {
      final args = routeData.argsAs<ItemRouteArgs>();
      return _i14.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i6.ItemPage(
          key: args.key,
          product: args.product,
        ),
      );
    },
    CatalogRoute.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i7.CatalogPage(),
      );
    },
    CategoryRoute.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i8.CategoryPage(),
      );
    },
    FavoritesRoute.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i9.FavoritesPage(),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i10.ProfilePage(),
      );
    },
    PersonalInfoRoute.name: (routeData) {
      final args = routeData.argsAs<PersonalInfoRouteArgs>(
          orElse: () => const PersonalInfoRouteArgs());
      return _i14.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i11.PersonalInfoPage(key: args.key),
      );
    },
    MyOrdersRoute.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i12.MyOrdersPage(),
      );
    },
    OrderRoute.name: (routeData) {
      final args = routeData.argsAs<OrderRouteArgs>();
      return _i14.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i13.OrderPage(
          key: args.key,
          order: args.order,
        ),
      );
    },
  };

  @override
  List<_i14.RouteConfig> get routes => [
        _i14.RouteConfig(
          MainRoute.name,
          path: '/',
          children: [
            _i14.RouteConfig(
              HomeRouter.name,
              path: 'home',
              parent: MainRoute.name,
              children: [
                _i14.RouteConfig(
                  HomeRoute.name,
                  path: '',
                  parent: HomeRouter.name,
                ),
                _i14.RouteConfig(
                  ItemRoute.name,
                  path: ':product',
                  parent: HomeRouter.name,
                ),
              ],
            ),
            _i14.RouteConfig(
              CatalogRouter.name,
              path: 'catalog',
              parent: MainRoute.name,
              children: [
                _i14.RouteConfig(
                  CatalogRoute.name,
                  path: '',
                  parent: CatalogRouter.name,
                ),
                _i14.RouteConfig(
                  CategoryRoute.name,
                  path: 'category',
                  parent: CatalogRouter.name,
                ),
                _i14.RouteConfig(
                  ItemRoute.name,
                  path: ':product',
                  parent: CatalogRouter.name,
                ),
                _i14.RouteConfig(
                  FavoritesRoute.name,
                  path: 'favorites',
                  parent: CatalogRouter.name,
                ),
              ],
            ),
            _i14.RouteConfig(
              SearchRouter.name,
              path: 'search',
              parent: MainRoute.name,
            ),
            _i14.RouteConfig(
              CartRouter.name,
              path: 'cart',
              parent: MainRoute.name,
            ),
            _i14.RouteConfig(
              ProfileRouter.name,
              path: 'profile',
              parent: MainRoute.name,
              children: [
                _i14.RouteConfig(
                  ProfileRoute.name,
                  path: '',
                  parent: ProfileRouter.name,
                ),
                _i14.RouteConfig(
                  PersonalInfoRoute.name,
                  path: ':personalInfo',
                  parent: ProfileRouter.name,
                ),
                _i14.RouteConfig(
                  MyOrdersRoute.name,
                  path: ':myOrders',
                  parent: ProfileRouter.name,
                ),
                _i14.RouteConfig(
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
class MainRoute extends _i14.PageRouteInfo<void> {
  const MainRoute({List<_i14.PageRouteInfo>? children})
      : super(
          MainRoute.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'MainRoute';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class HomeRouter extends _i14.PageRouteInfo<void> {
  const HomeRouter({List<_i14.PageRouteInfo>? children})
      : super(
          HomeRouter.name,
          path: 'home',
          initialChildren: children,
        );

  static const String name = 'HomeRouter';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class CatalogRouter extends _i14.PageRouteInfo<void> {
  const CatalogRouter({List<_i14.PageRouteInfo>? children})
      : super(
          CatalogRouter.name,
          path: 'catalog',
          initialChildren: children,
        );

  static const String name = 'CatalogRouter';
}

/// generated route for
/// [_i3.SearchPage]
class SearchRouter extends _i14.PageRouteInfo<void> {
  const SearchRouter()
      : super(
          SearchRouter.name,
          path: 'search',
        );

  static const String name = 'SearchRouter';
}

/// generated route for
/// [_i4.CartPage]
class CartRouter extends _i14.PageRouteInfo<void> {
  const CartRouter()
      : super(
          CartRouter.name,
          path: 'cart',
        );

  static const String name = 'CartRouter';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class ProfileRouter extends _i14.PageRouteInfo<void> {
  const ProfileRouter({List<_i14.PageRouteInfo>? children})
      : super(
          ProfileRouter.name,
          path: 'profile',
          initialChildren: children,
        );

  static const String name = 'ProfileRouter';
}

/// generated route for
/// [_i5.HomePage]
class HomeRoute extends _i14.PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: '',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i6.ItemPage]
class ItemRoute extends _i14.PageRouteInfo<ItemRouteArgs> {
  ItemRoute({
    _i16.Key? key,
    required _i17.Product product,
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

  final _i16.Key? key;

  final _i17.Product product;

  @override
  String toString() {
    return 'ItemRouteArgs{key: $key, product: $product}';
  }
}

/// generated route for
/// [_i7.CatalogPage]
class CatalogRoute extends _i14.PageRouteInfo<void> {
  const CatalogRoute()
      : super(
          CatalogRoute.name,
          path: '',
        );

  static const String name = 'CatalogRoute';
}

/// generated route for
/// [_i8.CategoryPage]
class CategoryRoute extends _i14.PageRouteInfo<void> {
  const CategoryRoute()
      : super(
          CategoryRoute.name,
          path: 'category',
        );

  static const String name = 'CategoryRoute';
}

/// generated route for
/// [_i9.FavoritesPage]
class FavoritesRoute extends _i14.PageRouteInfo<void> {
  const FavoritesRoute()
      : super(
          FavoritesRoute.name,
          path: 'favorites',
        );

  static const String name = 'FavoritesRoute';
}

/// generated route for
/// [_i10.ProfilePage]
class ProfileRoute extends _i14.PageRouteInfo<void> {
  const ProfileRoute()
      : super(
          ProfileRoute.name,
          path: '',
        );

  static const String name = 'ProfileRoute';
}

/// generated route for
/// [_i11.PersonalInfoPage]
class PersonalInfoRoute extends _i14.PageRouteInfo<PersonalInfoRouteArgs> {
  PersonalInfoRoute({_i16.Key? key})
      : super(
          PersonalInfoRoute.name,
          path: ':personalInfo',
          args: PersonalInfoRouteArgs(key: key),
        );

  static const String name = 'PersonalInfoRoute';
}

class PersonalInfoRouteArgs {
  const PersonalInfoRouteArgs({this.key});

  final _i16.Key? key;

  @override
  String toString() {
    return 'PersonalInfoRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i12.MyOrdersPage]
class MyOrdersRoute extends _i14.PageRouteInfo<void> {
  const MyOrdersRoute()
      : super(
          MyOrdersRoute.name,
          path: ':myOrders',
        );

  static const String name = 'MyOrdersRoute';
}

/// generated route for
/// [_i13.OrderPage]
class OrderRoute extends _i14.PageRouteInfo<OrderRouteArgs> {
  OrderRoute({
    _i16.Key? key,
    required _i18.Order order,
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

  final _i16.Key? key;

  final _i18.Order order;

  @override
  String toString() {
    return 'OrderRouteArgs{key: $key, order: $order}';
  }
}
