import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:organic_market_app/data/api/network/network_manager.dart';
import 'package:organic_market_app/data/repository/mock_repository.dart';
import 'package:organic_market_app/navigation/auto_router.gr.dart';
import 'package:organic_market_app/presentation/common_widgets/bottom_nav_bar/custom_bottom_nav_bar.dart';
import 'package:organic_market_app/presentation/pages/cart/bloc/cart_bloc.dart';
import 'package:organic_market_app/presentation/pages/catalog/bloc/catalog_bloc.dart';
import 'package:organic_market_app/presentation/pages/favorites/bloc/favorites_bloc.dart';
import 'package:organic_market_app/presentation/pages/my_orders/bloc/my_orders_bloc.dart';
import 'package:organic_market_app/presentation/pages/personal_info/bloc/personal_info_bloc.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => CartBloc()..add(CartInitialized()),
        ),
        BlocProvider(
          create: (context) => FavoritesBloc()..add(FavoritesInitialized()),
        ),
        BlocProvider(
          create: (context) => CatalogBloc(NetworkManager(), MockRepository())
            ..add(const FetchAllProducts()),
        ),
        BlocProvider(
            create: (context) =>
                PersonalInfoBloc()..add(PersonalInfoInitialized())),
        BlocProvider(
            create: (context) => MyOrdersBloc()..add(MyOrdersInitialized())),
      ],
      child: AutoTabsScaffold(
        extendBodyBehindAppBar: true,
        routes: const [
          HomeRouter(),
          CatalogRouter(),
          SearchRouter(),
          CartRouter(),
          ProfileRouter(),
        ],
        bottomNavigationBuilder: (context, tabsRouter) {
          return CustomBottomNavBar(tabsRouter: tabsRouter);
        },
      ),
    );
  }
}
