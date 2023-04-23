import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:organic_market_app/utils/app_colors.dart';
import 'package:organic_market_app/utils/app_text_styles.dart';

class MainGreenButton extends StatelessWidget {
  const MainGreenButton({
    super.key,
    required this.label,
  });

  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 343.w,
      height: 58.h,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(43)),
        boxShadow: [
          BoxShadow(
            color: AppColors.shadowColor,
            blurRadius: 8,
            spreadRadius: 1,
          ),
        ],
        color: AppColors.mainGreen,
      ),
      alignment: Alignment.center,
      child: Text(
        label,
        style: AppTextStyles.greenButtonTextStyle,
      ),
    );
  }
}
