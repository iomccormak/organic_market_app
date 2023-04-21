import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:organic_market_app/navigation/auto_router.gr.dart';
import 'package:organic_market_app/utils/app_colors.dart';
import 'package:organic_market_app/utils/app_icons.dart';
import 'package:organic_market_app/utils/app_strings.dart';
import 'package:organic_market_app/utils/app_text_styles.dart';

class BottomBarWidget extends StatelessWidget {
  const BottomBarWidget({super.key, required this.router});

  final TabsRouter router;

  @override
  Widget build(BuildContext context) {
    int currentIndex = router.activeIndex;

    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(12),
          topRight: Radius.circular(12),
        ),
        boxShadow: [
          BoxShadow(
            color: AppColors.shadowColor,
            blurRadius: 15,
            spreadRadius: 7,
          ),
        ],
        color: AppColors.white,
      ),
      height: 60.h,
      padding: EdgeInsets.symmetric(horizontal: 21.5.h),
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              router.setActiveIndex;
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(AppIcons.mainSmall),
                SizedBox(
                  height: 4.h,
                ),
                Text(
                  AppStrings.main,
                  style: AppTextStyles.bottomBarTextStyle,
                )
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              router.setActiveIndex;
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(AppIcons.catalogue),
                SizedBox(
                  height: 4.h,
                ),
                Text(
                  AppStrings.catalog,
                  style: AppTextStyles.bottomBarTextStyle,
                )
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              router.setActiveIndex;
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(AppIcons.search),
                SizedBox(
                  height: 4.h,
                ),
                Text(
                  AppStrings.search,
                  style: AppTextStyles.bottomBarTextStyle,
                )
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              router.setActiveIndex;
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(AppIcons.customCart),
                SizedBox(
                  height: 4.h,
                ),
                Text(
                  AppStrings.cart,
                  style: AppTextStyles.bottomBarTextStyle,
                )
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              router.setActiveIndex;
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(AppIcons.profile),
                SizedBox(
                  height: 4.h,
                ),
                Text(
                  AppStrings.profile,
                  style: AppTextStyles.bottomBarTextStyle,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
