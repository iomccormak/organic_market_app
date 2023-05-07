// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:organic_market_app/presentation/common_widgets/custom_app_bar.dart';
import 'package:organic_market_app/presentation/common_widgets/bottom_nav_bar/nav_bar_shadow.dart';
import 'package:organic_market_app/presentation/pages/my_orders/my_orders_page.dart';
import 'package:organic_market_app/presentation/pages/personal_info/personal_info_page.dart';
import 'package:organic_market_app/utils/app_constants/app_strings.dart';
import 'package:organic_market_app/utils/app_constants/app_text_styles.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(44.h),
        child: const CustomAppBar(
          label: AppStrings.search,
        ),
      ),
      body: Stack(
        children: [
          Center(
            child: Text(
              AppStrings.search,
              style: AppTextStyles.titleTextStyle,
            ),
          ),
          const NavBarShadow(),
        ],
      ),
    );
  }
}
