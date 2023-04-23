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
import 'package:auto_route/auto_route.dart' as _i12;
import 'package:auto_route/empty_router_widgets.dart' as _i2;
import 'package:flutter/cupertino.dart' as _i14;
import 'package:flutter/material.dart' as _i13;

import '../domain/models/order.dart' as _i16;
import '../domain/models/product.dart' as _i15;
import '../presentation/pages/cart/cart_page.dart' as _i5;
import '../presentation/pages/catalog/catalog_page.dart' as _i3;
import '../presentation/pages/home/home_page.dart' as _i6;
import '../presentation/pages/item/item_page.dart' as _i7;
import '../presentation/pages/main/main_page.dart' as _i1;
import '../presentation/pages/my_orders/my_orders_page.dart' as _i10;
import '../presentation/pages/order/order_page.dart' as _i11;
import '../presentation/pages/personal_info/personal_info_page.dart' as _i9;
import '../presentation/pages/profile/profile_page.dart' as _i8;
import '../presentation/pages/search/search_page.dart' as _i4;

class AppRouter extends _i12.RootStackRouter {
  AppRouter([_i13.GlobalKey<_i13.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i12.PageFactory> pagesMap = {
    MainRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.MainPage(),
      );
    },
    HomeRouter.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.EmptyRouterPage(),
      );
    },
    CatalogRouter.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.CatalogPage(),
      );
    },
    SearchRouter.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.SearchPage(),
      );
    },
    CartRouter.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.CartPage(),
      );
    },
    ProfileRouter.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.EmptyRouterPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i6.HomePage(),
      );
    },
    ItemRoute.name: (routeData) {
      final args = routeData.argsAs<ItemRouteArgs>();
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i7.ItemPage(
          key: args.key,
          product: args.product,
        ),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i8.ProfilePage(),
      );
    },
    PersonalInfoRoute.name: (routeData) {
      final args = routeData.argsAs<PersonalInfoRouteArgs>(
          orElse: () => const PersonalInfoRouteArgs());
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i9.PersonalInfoPage(key: args.key),
      );
    },
    MyOrdersRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i10.MyOrdersPage(),
      );
    },
    OrderRoute.name: (routeData) {
      final args = routeData.argsAs<OrderRouteArgs>();
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i11.OrderPage(
          key: args.key,
          order: args.order,
        ),
      );
    },
  };

  @override
  List<_i12.RouteConfig> get routes => [
        _i12.RouteConfig(
          MainRoute.name,
          path: '/',
          children: [
            _i12.RouteConfig(
              HomeRouter.name,
              path: 'home',
              parent: MainRoute.name,
              children: [
                _i12.RouteConfig(
                  HomeRoute.name,
                  path: '',
                  parent: HomeRouter.name,
                ),
                _i12.RouteConfig(
                  ItemRoute.name,
                  path: ':product',
                  parent: HomeRouter.name,
                ),
              ],
            ),
            _i12.RouteConfig(
              CatalogRouter.name,
              path: 'catalog',
              parent: MainRoute.name,
            ),
            _i12.RouteConfig(
              SearchRouter.name,
              path: 'search',
              parent: MainRoute.name,
            ),
            _i12.RouteConfig(
              CartRouter.name,
              path: 'cart',
              parent: MainRoute.name,
            ),
            _i12.RouteConfig(
              ProfileRouter.name,
              path: 'profile',
              parent: MainRoute.name,
              children: [
                _i12.RouteConfig(
                  ProfileRoute.name,
                  path: '',
                  parent: ProfileRouter.name,
                ),
                _i12.RouteConfig(
                  PersonalInfoRoute.name,
                  path: ':personalInfo',
                  parent: ProfileRouter.name,
                ),
                _i12.RouteConfig(
                  MyOrdersRoute.name,
                  path: ':myOrders',
                  parent: ProfileRouter.name,
                ),
                _i12.RouteConfig(
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
class MainRoute extends _i12.PageRouteInfo<void> {
  const MainRoute({List<_i12.PageRouteInfo>? children})
      : super(
          MainRoute.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'MainRoute';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class HomeRouter extends _i12.PageRouteInfo<void> {
  const HomeRouter({List<_i12.PageRouteInfo>? children})
      : super(
          HomeRouter.name,
          path: 'home',
          initialChildren: children,
        );

  static const String name = 'HomeRouter';
}

/// generated route for
/// [_i3.CatalogPage]
class CatalogRouter extends _i12.PageRouteInfo<void> {
  const CatalogRouter()
      : super(
          CatalogRouter.name,
          path: 'catalog',
        );

  static const String name = 'CatalogRouter';
}

/// generated route for
/// [_i4.SearchPage]
class SearchRouter extends _i12.PageRouteInfo<void> {
  const SearchRouter()
      : super(
          SearchRouter.name,
          path: 'search',
        );

  static const String name = 'SearchRouter';
}

/// generated route for
/// [_i5.CartPage]
class CartRouter extends _i12.PageRouteInfo<void> {
  const CartRouter()
      : super(
          CartRouter.name,
          path: 'cart',
        );

  static const String name = 'CartRouter';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class ProfileRouter extends _i12.PageRouteInfo<void> {
  const ProfileRouter({List<_i12.PageRouteInfo>? children})
      : super(
          ProfileRouter.name,
          path: 'profile',
          initialChildren: children,
        );

  static const String name = 'ProfileRouter';
}

/// generated route for
/// [_i6.HomePage]
class HomeRoute extends _i12.PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: '',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i7.ItemPage]
class ItemRoute extends _i12.PageRouteInfo<ItemRouteArgs> {
  ItemRoute({
    _i14.Key? key,
    required _i15.Product product,
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

  final _i14.Key? key;

  final _i15.Product product;

  @override
  String toString() {
    return 'ItemRouteArgs{key: $key, product: $product}';
  }
}

/// generated route for
/// [_i8.ProfilePage]
class ProfileRoute extends _i12.PageRouteInfo<void> {
  const ProfileRoute()
      : super(
          ProfileRoute.name,
          path: '',
        );

  static const String name = 'ProfileRoute';
}

/// generated route for
/// [_i9.PersonalInfoPage]
class PersonalInfoRoute extends _i12.PageRouteInfo<PersonalInfoRouteArgs> {
  PersonalInfoRoute({_i14.Key? key})
      : super(
          PersonalInfoRoute.name,
          path: ':personalInfo',
          args: PersonalInfoRouteArgs(key: key),
        );

  static const String name = 'PersonalInfoRoute';
}

class PersonalInfoRouteArgs {
  const PersonalInfoRouteArgs({this.key});

  final _i14.Key? key;

  @override
  String toString() {
    return 'PersonalInfoRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i10.MyOrdersPage]
class MyOrdersRoute extends _i12.PageRouteInfo<void> {
  const MyOrdersRoute()
      : super(
          MyOrdersRoute.name,
          path: ':myOrders',
        );

  static const String name = 'MyOrdersRoute';
}

/// generated route for
/// [_i11.OrderPage]
class OrderRoute extends _i12.PageRouteInfo<OrderRouteArgs> {
  OrderRoute({
    _i14.Key? key,
    required _i16.Order order,
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

  final _i14.Key? key;

  final _i16.Order order;

  @override
  String toString() {
    return 'OrderRouteArgs{key: $key, order: $order}';
  }
}
