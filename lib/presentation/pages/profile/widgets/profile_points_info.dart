import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:organic_market_app/utils/app_colors.dart';
import 'package:organic_market_app/utils/app_icons.dart';
import 'package:organic_market_app/utils/app_text_styles.dart';

class ProfilePointsInfo extends StatelessWidget {
  const ProfilePointsInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 343.w,
      height: 85.h,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(8)),
        boxShadow: [
          BoxShadow(
            color: AppColors.shadowColor,
            blurRadius: 8,
            spreadRadius: 1,
          ),
        ],
        color: AppColors.white,
      ),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Бонусные баллы',
                style: AppTextStyles.appBarTextStyle.copyWith(
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: SvgPicture.asset(AppIcons.question),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                '250 баллов',
                style: AppTextStyles.phoneTextStyle.copyWith(
                  color: AppColors.mainGreen,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Text(
                'Уровень 2',
                style: AppTextStyles.bottomSheetTextStyle,
              ),
            ),
          ],
        ),
      ),
    );
  }
}