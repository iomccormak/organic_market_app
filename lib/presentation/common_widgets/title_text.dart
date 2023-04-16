import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:organic_market_app/utils/app_text_styles.dart';

class TitleText extends StatelessWidget {
  const TitleText({super.key, required this.title, required this.leftPadding});

  final String title;
  final int leftPadding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: leftPadding.w),
      child: Text(
        title,
        style: AppTextStyles.titleTextStyle.copyWith(
          fontFamily: AppTextStyles.fontFamilyYesevaOne,
        ),
      ),
    );
  }
}
