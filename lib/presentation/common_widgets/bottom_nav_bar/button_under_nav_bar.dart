import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:organic_market_app/utils/app_constants/app_colors.dart';

class ButtonUnderNavBar extends StatelessWidget {
  const ButtonUnderNavBar({
    super.key,
    required this.button,
  });

  final Widget button;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 600.h),
      child: Container(
        height: 93.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(12.r)),
          boxShadow: const [
            BoxShadow(
              color: AppColors.shadowColor,
              blurRadius: 8,
              spreadRadius: 1,
            ),
          ],
          color: AppColors.white,
        ),
        alignment: Alignment.center,
        child: button,
      ),
    );
  }
}
