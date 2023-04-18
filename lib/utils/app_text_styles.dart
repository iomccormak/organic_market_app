import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:organic_market_app/utils/app_colors.dart';

import 'package:flutter/material.dart';

abstract class AppTextStyles {
  static const fontFamilyJost = "Jost";
  static const fontFamilyYesevaOne = "Yeseva One";

  static final titleTextStyle = TextStyle(
    color: AppColors.black,
    fontSize: 24.sp,
    fontWeight: FontWeight.w400,
    fontFamily: "Jost",
  );

  static final bottomBarTextStyle = TextStyle(
    color: AppColors.mainGrey,
    fontSize: 13.sp,
    fontWeight: FontWeight.w400,
  );

  static final lowWidgetTextStyle = TextStyle(
    color: AppColors.black,
    fontSize: 13.sp,
    fontWeight: FontWeight.w500,
  );

  static final categoryTextStyle = TextStyle(
    color: AppColors.black,
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
  );

  static final productWidgetTextStyle = TextStyle(
    color: AppColors.black,
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
  );

  static final priceTextStyle = TextStyle(
    color: AppColors.black,
    fontSize: 18.sp,
    fontWeight: FontWeight.w600,
  );

  static final greenButtonTextStyle = TextStyle(
    color: AppColors.white,
    fontSize: 18.sp,
    fontWeight: FontWeight.w600,
  );

  static final appBarTextStyle = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
    color: AppColors.black,
  );

  static final size16weight400 = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.black,
  );

  static final bottomSheetTitleTextStyle = TextStyle(
    fontSize: 20.sp,
    fontWeight: FontWeight.w700,
    color: AppColors.black,
  );

  static final bottomSheetTextStyle = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.mainGrey,
  );

  static final bottomSheetSmallTextStyle = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.secondGrey,
    fontFamily: "Jost",
  );

  static final phoneTextStyle = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeight.w500,
    color: AppColors.mainGrey,
  );
}
