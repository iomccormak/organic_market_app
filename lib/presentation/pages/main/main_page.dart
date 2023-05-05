import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import 'package:organic_market_app/domain/api.dart';
import 'package:organic_market_app/domain/models/shop_service.dart';
import 'package:organic_market_app/navigation/auto_router.gr.dart';
import 'package:organic_market_app/presentation/common_widgets/app_bar_widget.dart';
import 'package:organic_market_app/presentation/common_widgets/bottom_nav_bar/app_bottom_nav_bar.dart';
import 'package:organic_market_app/presentation/pages/cart/bloc/cart_bloc.dart';
import 'package:organic_market_app/presentation/pages/catalog/cubit/shop_cubit.dart';
import 'package:organic_market_app/presentation/pages/favorites/bloc/favorites_bloc.dart';

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
          create: (context) => ShopCubit(ShopService()),
        ),
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
          return AppBottomNavBar(tabsRouter: tabsRouter);
        },
      ),
    );
  }
}
