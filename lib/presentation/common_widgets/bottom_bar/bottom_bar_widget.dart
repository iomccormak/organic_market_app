import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:organic_market_app/utils/app_colors.dart';
import 'package:organic_market_app/utils/app_icons.dart';
import 'package:organic_market_app/utils/app_strings.dart';

class BottomBarWidget extends StatelessWidget {
  const BottomBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      type: BottomNavigationBarType.fixed,
      selectedFontSize: 12.sp,
      unselectedFontSize: 12.sp,
      unselectedItemColor: AppColors.mainGrey,
      selectedItemColor: AppColors.mainGreen,
      showUnselectedLabels: true,
      items: [
        BottomNavigationBarItem(
          icon: SvgPicture.asset(AppIcons.mainSmall),
          label: AppStrings.main,
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(AppIcons.catalogue),
          label: AppStrings.catalog,
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(AppIcons.search),
          label: AppStrings.search,
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(AppIcons.customCart),
          label: AppStrings.cart,
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(AppIcons.profile),
          label: AppStrings.profile,
        ),
      ],
      onTap: (value) {},
    );
  }
}
