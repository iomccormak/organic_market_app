import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:organic_market_app/navigation/auto_router.gr.dart';
import 'package:organic_market_app/utils/app_constants/app_colors.dart';
import 'package:organic_market_app/utils/app_constants/app_strings.dart';
import 'package:organic_market_app/utils/app_constants/app_text_styles.dart';
import 'package:organic_market_app/presentation/common_widgets/bottom_nav_bar/nav_bar_shadow.dart';

class EmptyScreen extends StatelessWidget {
  const EmptyScreen({super.key, required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  label,
                  style: AppTextStyles.titleTextStyle.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 9.h,
                ),
                Text(
                  AppStrings.addedProd,
                  style: AppTextStyles.bottomBarTextStyle.copyWith(
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: 36.h,
                ),
                GestureDetector(
                  onTap: () => context.router.navigate(const CatalogRouter()),
                  child: Container(
                    width: 247.w,
                    height: 47.h,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(43.r),
                      ),
                      color: AppColors.mainGreen,
                    ),
                    child: Text(
                      AppStrings.goShopping,
                      style: AppTextStyles.greenButtonTextStyle.copyWith(
                        fontSize: 16.sp,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const NavBarShadow(),
        ],
      ),
    );
  }
}
