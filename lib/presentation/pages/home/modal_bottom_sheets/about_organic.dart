import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:organic_market_app/utils/app_colors.dart';
import 'package:organic_market_app/utils/app_icons.dart';
import 'package:organic_market_app/utils/app_text_styles.dart';

class AboutOrganic extends StatelessWidget {
  const AboutOrganic({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.white,
        titleSpacing: -35.w,
        title: Text(
          'Об органике',
          style: TextStyle(
            color: AppColors.black,
            fontSize: 18.sp,
            fontWeight: FontWeight.w700,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(
              right: 18.w,
            ),
            child: GestureDetector(
              child: SvgPicture.asset(AppIcons.close),
              onTap: () => Navigator.pop(context),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 16.w,
        ),
        child: Text(
          'Главный принцип органического сельского хозяйства — это забота об окружающей среде и здоровье человека',
          style: AppTextStyles.categoryTextStyle.copyWith(
            fontSize: 14.sp,
          ),
        ),
      ),
    );
  }
}
