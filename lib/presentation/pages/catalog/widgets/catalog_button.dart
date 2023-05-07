import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:organic_market_app/utils/app_constants/app_colors.dart';
import 'package:organic_market_app/utils/app_constants/app_text_styles.dart';

class CatalogButton extends StatelessWidget {
  const CatalogButton({
    super.key,
    required this.icon,
    required this.title,
    required this.width,
  });

  final String icon;
  final String title;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width.w,
      height: 54.h,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        boxShadow: [
          BoxShadow(
            color: AppColors.shadowColor,
            blurRadius: 8,
            spreadRadius: 1,
          ),
        ],
        color: AppColors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(icon),
          SizedBox(
            width: 8.w,
          ),
          Text(
            title,
            style: AppTextStyles.size16weight400,
          )
        ],
      ),
    );
  }
}
