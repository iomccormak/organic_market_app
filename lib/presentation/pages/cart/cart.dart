import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:organic_market_app/presentation/common_widgets/bottom_bar/main_bottom_bar_widget.dart';
import 'package:organic_market_app/presentation/pages/cart/widgets/cart_app_bar.dart';
import 'package:organic_market_app/presentation/pages/cart/widgets/empty_screen.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(45.h),
        child: const CartAppBar(),
      ),
      bottomNavigationBar: const MainBottomBarWidget(),
      body: const EmptyScreen(),
    );
  }
}
