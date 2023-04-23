import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:organic_market_app/utils/app_colors.dart';

class NavBarShadow extends StatelessWidget {
  const NavBarShadow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 760.h),
      child: Container(
        decoration: const BoxDecoration(
          color: AppColors.shadowColor,
          boxShadow: [
            BoxShadow(
              color: AppColors.shadowColor,
              blurRadius: 15,
              spreadRadius: 7,
            ),
          ],
        ),
      ),
    );
  }
}
