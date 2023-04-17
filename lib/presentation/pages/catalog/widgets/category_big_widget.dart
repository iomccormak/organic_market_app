import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:organic_market_app/data/repository/temp_repository.dart';
import 'package:organic_market_app/domain/models/product_category.dart';
import 'package:organic_market_app/utils/app_colors.dart';
import 'package:organic_market_app/utils/app_icons.dart';
import 'package:organic_market_app/utils/app_text_styles.dart';

class CategoryBigWidget extends StatelessWidget {
  const CategoryBigWidget({super.key, required this.category});

  final ProductCategory category;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 10.w,
      ),
      child: Container(
        width: 163.w,
        height: 117.h,
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
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: category.leftPadding.w,
                top: category.topPadding.h,
              ),
              child: SvgPicture.asset(
                category.background,
              ),
            ),
            Image.asset(category.icon),
            Padding(
              padding: EdgeInsets.only(
                top: 70.h,
                left: 12.w,
                right: 12.w,
              ),
              child: Text(
                category.title,
                textAlign: TextAlign.start,
                style: AppTextStyles.bottomBarTextStyle.copyWith(
                  color: AppColors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 12.sp,
                  height: 1,
                ),
              ),
            )
          ],
        ),
      ),
    );
    /**/
  }
}
