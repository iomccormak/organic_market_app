import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:organic_market_app/utils/app_colors.dart';
import 'package:organic_market_app/utils/app_icons.dart';
import 'package:organic_market_app/utils/app_strings.dart';
import 'package:organic_market_app/utils/app_text_styles.dart';

class CartAppBar extends StatelessWidget {
  const CartAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.h,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(12.r),
          bottomRight: Radius.circular(12.r),
        ),
        boxShadow: const [
          BoxShadow(
            color: AppColors.shadowColor,
            blurRadius: 15,
            spreadRadius: 7,
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.only(
          top: 30.h,
        ),
        child: Stack(
          children: [
            Center(
              child: Text(
                AppStrings.cart,
                style: AppTextStyles.appBarTextStyle,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 335.w,
                top: 6.h,
                bottom: 9.h,
              ),
              child: SvgPicture.asset(AppIcons.litter),
            ),
          ],
        ),
      ),
    );
  }
}
