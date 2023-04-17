import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:organic_market_app/data/repository/temp_repository.dart';
import 'package:organic_market_app/presentation/common_widgets/bottom_bar/bottom_bar_widget.dart';
import 'package:organic_market_app/presentation/pages/cart/cart_page.dart';
import 'package:organic_market_app/presentation/pages/catalog/catalog_page.dart';
import 'package:organic_market_app/presentation/pages/home/home_page.dart';
import 'package:organic_market_app/presentation/pages/home/widgets/home_app_bar.dart';
import 'package:organic_market_app/presentation/pages/item/item_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            fontFamily: "Jost",
          ),
          home: Scaffold(
            extendBodyBehindAppBar: true,
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(45.h),
              child: HomeAppBar(),
            ),
            bottomNavigationBar: BottomBarWidget(),
            body: HomePage(),
          ),
          //home: Splash(),
          //home: Item(product: TempRepository.products[0]),
          //home: Home(),
          //home: Cart(),
          //home: Catalog(),
        );
      },
    );
  }
}
