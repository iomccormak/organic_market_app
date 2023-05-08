import 'package:auto_route/auto_route.dart';
import 'package:auto_route/empty_router_widgets.dart';
import 'package:organic_market_app/presentation/pages/ordering/ordering_page.dart';
import 'package:organic_market_app/presentation/pages/cart/cart_page.dart';
import 'package:organic_market_app/presentation/pages/catalog/catalog_page.dart';
import 'package:organic_market_app/presentation/pages/category/category_page.dart';
import 'package:organic_market_app/presentation/pages/favorites/favorites_page.dart';
import 'package:organic_market_app/presentation/pages/home/home_page.dart';
import 'package:organic_market_app/presentation/pages/item/item_page.dart';
import 'package:organic_market_app/presentation/pages/main/main_page.dart';
import 'package:organic_market_app/presentation/pages/my_orders/my_orders_page.dart';
import 'package:organic_market_app/presentation/pages/order/order_page.dart';
import 'package:organic_market_app/presentation/pages/succesfull_order/succesfull_order_page.dart';
import 'package:organic_market_app/presentation/pages/personal_info/personal_info_page.dart';
import 'package:organic_market_app/presentation/pages/profile/profile_page.dart';
import 'package:organic_market_app/presentation/pages/search/search_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      path: '/',
      page: MainPage,
      children: [
        AutoRoute(
          path: 'home',
          name: 'HomeRouter',
          page: EmptyRouterPage,
          children: [
            AutoRoute(
              path: '',
              page: HomePage,
            ),
            AutoRoute(
              path: ':product',
              page: ItemPage,
            ),
          ],
        ),
        AutoRoute(
          path: 'catalog',
          name: 'CatalogRouter',
          page: EmptyRouterPage,
          children: [
            AutoRoute(
              path: '',
              page: CatalogPage,
            ),
            AutoRoute(
              path: 'category',
              page: CategoryPage,
            ),
            AutoRoute(
              path: ':product',
              page: ItemPage,
            ),
            AutoRoute(
              path: 'favorites',
              page: FavoritesPage,
            )
          ],
        ),
        AutoRoute(
          path: 'search',
          name: 'SearchRouter',
          page: SearchPage,
        ),
        AutoRoute(
          path: 'cart',
          name: 'CartRouter',
          page: EmptyRouterPage,
          children: [
            AutoRoute(
              path: '',
              page: CartPage,
            ),
            AutoRoute(
              path: ':ordering',
              page: OrderingPage,
            ),
            AutoRoute(
              path: 'succesfullOrder',
              page: SuccesfullOrderPage,
            )
          ],
        ),
        AutoRoute(
          path: 'profile',
          name: 'ProfileRouter',
          page: EmptyRouterPage,
          children: [
            AutoRoute(
              path: '',
              page: ProfilePage,
            ),
            AutoRoute(
              path: ':personalInfo',
              page: PersonalInfoPage,
            ),
            AutoRoute(
              path: ':myOrders',
              page: MyOrdersPage,
            ),
            AutoRoute(
              path: ':order',
              page: OrderPage,
            ),
          ],
        ),
      ],
    ),
  ],
)
class $AppRouter {}
