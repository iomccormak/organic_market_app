import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:organic_market_app/data/repository/temp_repository.dart';
import 'package:organic_market_app/presentation/pages/cart/cart.dart';
import 'package:organic_market_app/presentation/pages/catalog/catalog.dart';
import 'package:organic_market_app/presentation/pages/home/home.dart';
import 'package:organic_market_app/presentation/pages/item/item.dart';

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
          //home: Splash(),
          home: Item(product: TempRepository.products[0]),
          //home: Home(),
          //home: Cart(),
          //home: Catalog(),
        );
      },
    );
  }
}
