import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:organic_market_app/data/repository/temp_repository.dart';
import 'package:organic_market_app/navigation/auto_router.gr.dart';
import 'package:organic_market_app/presentation/common_widgets/bottom_nav_bar/temp_bottom_bar_widget.dart';
import 'package:organic_market_app/presentation/pages/cart/cart_page.dart';
import 'package:organic_market_app/presentation/pages/catalog/catalog_page.dart';
import 'package:organic_market_app/presentation/pages/home/home_page.dart';
import 'package:organic_market_app/presentation/pages/home/widgets/home_app_bar.dart';
import 'package:organic_market_app/presentation/pages/item/item_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            fontFamily: "Jost",
          ),
          routerDelegate: _appRouter.delegate(),
          routeInformationParser: _appRouter.defaultRouteParser(),
        );
      },
    );
  }
}
