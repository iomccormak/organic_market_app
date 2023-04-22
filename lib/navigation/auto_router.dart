import 'package:auto_route/auto_route.dart';
import 'package:organic_market_app/presentation/pages/cart/cart_page.dart';
import 'package:organic_market_app/presentation/pages/catalog/catalog_page.dart';
import 'package:organic_market_app/presentation/pages/home/home_page.dart';
import 'package:organic_market_app/presentation/pages/item/item_page.dart';
import 'package:organic_market_app/presentation/pages/main/main_page.dart';
import 'package:organic_market_app/presentation/pages/order/order_page.dart';
import 'package:organic_market_app/presentation/pages/profile/profile_page.dart';
import 'package:organic_market_app/presentation/pages/search/search_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      initial: true,
      page: MainPage,
      children: [
        AutoRoute(
          page: HomePage,
        ),
        AutoRoute(
          page: CatalogPage,
        ),
        AutoRoute(
          page: SearchPage,
        ),
        AutoRoute(
          page: CartPage,
        ),
        AutoRoute(
          page: ProfilePage,
        ),
      ],
    ),
    AutoRoute(
      page: OrderPage,
    ),
    AutoRoute(
      page: ItemPage,
    )
  ],
)
class $AppRouter {}
