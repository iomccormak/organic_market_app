import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:organic_market_app/utils/app_colors.dart';
import 'package:organic_market_app/utils/app_icons.dart';
import 'package:organic_market_app/utils/app_strings.dart';
import 'package:organic_market_app/utils/app_text_styles.dart';

class AppBottomNavBar extends StatelessWidget {
  const AppBottomNavBar({super.key, required this.tabsRouter});

  final TabsRouter tabsRouter;

  @override
  Widget build(BuildContext context) {
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
      child: BottomNavigationBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: true,
        selectedLabelStyle: AppTextStyles.bottomBarTextStyle.copyWith(
          color: AppColors.mainGreen,
        ),
        unselectedLabelStyle: AppTextStyles.bottomBarTextStyle,
        selectedItemColor: AppColors.mainGreen,
        currentIndex: tabsRouter.activeIndex,
        onTap: tabsRouter.setActiveIndex,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppIcons.mainSmall),
            activeIcon: SvgPicture.asset(
              AppIcons.mainSmall,
              colorFilter: ColorFilter.mode(
                Color.fromARGB(255, 209, 254, 83),
                BlendMode.modulate,
              ),
            ),
            label: AppStrings.main,
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppIcons.catalogue),
            activeIcon: SvgPicture.asset(
              AppIcons.catalogue,
              colorFilter: ColorFilter.mode(
                AppColors.mainGreen,
                BlendMode.srcIn,
              ),
            ),
            label: AppStrings.catalog,
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppIcons.search),
            activeIcon: SvgPicture.asset(
              AppIcons.search,
              colorFilter: ColorFilter.mode(
                AppColors.mainGreen,
                BlendMode.srcIn,
              ),
            ),
            label: AppStrings.search,
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppIcons.customCart),
            activeIcon: SvgPicture.asset(
              AppIcons.customCart,
              colorFilter: ColorFilter.mode(
                AppColors.mainGreen,
                BlendMode.srcIn,
              ),
            ),
            label: AppStrings.cart,
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppIcons.profile),
            activeIcon: SvgPicture.asset(
              AppIcons.profile,
              colorFilter: ColorFilter.mode(
                AppColors.mainGreen,
                BlendMode.srcIn,
              ),
            ),
            label: AppStrings.profile,
          ),
        ],
      ),
    );
    ;
  }
}