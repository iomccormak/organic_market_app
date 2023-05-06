// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:organic_market_app/presentation/common_widgets/app_bar_widget.dart';
import 'package:organic_market_app/presentation/common_widgets/bottom_nav_bar/nav_bar_shadow.dart';
import 'package:organic_market_app/presentation/pages/my_orders/my_orders_page.dart';
import 'package:organic_market_app/presentation/pages/personal_info/personal_info_page.dart';
import 'package:organic_market_app/presentation/pages/profile/widgets/profile_app_bar.dart';
import 'package:organic_market_app/utils/app_strings.dart';
import 'package:organic_market_app/utils/app_text_styles.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    //return MyOrdersPage();
    //return PersonalInfoPage();
    return Scaffold(
      appBar: PreferredSize(
        child: AppBarWidget(
          label: AppStrings.search,
        ),
        preferredSize: Size.fromHeight(44.h),
      ),
      body: Stack(
        children: [
          Center(
            child: Text(
              'Поиск',
              style: AppTextStyles.titleTextStyle,
            ),
          ),
          const NavBarShadow(),
        ],
      ),
    );
  }
}
