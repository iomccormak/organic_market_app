import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:organic_market_app/domain/models/categories/main_category.dart';
import 'package:organic_market_app/utils/app_constants/app_colors.dart';
import 'package:organic_market_app/utils/app_constants/app_text_styles.dart';

class CategorySmallCard extends StatelessWidget {
  const CategorySmallCard({super.key, required this.category});

  final MainCategory category;

  @override
  Widget build(BuildContext context) {
    int topPadding;

    category.title.length > 13
        ? category.title.length > 26
            ? topPadding = 62
            : topPadding = 74
        : topPadding = 86;

    return GestureDetector(
      onTap: () => context.router.navigateNamed('catalog/category'),
      child: Row(
        children: [
          Container(
            width: 104.w,
            height: 104.h,
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
            child: Stack(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: 22.w,
                    top: 16.h,
                  ),
                  child: SvgPicture.asset(
                    category.background,
                  ),
                ),
                Image.asset(category.icon),
                Padding(
                  padding: EdgeInsets.only(
                    top: topPadding.h,
                    left: 12.w,
                    right: 12.w,
                  ),
                  child: Text(
                    category.title,
                    textAlign: TextAlign.start,
                    style: AppTextStyles.bottomBarTextStyle.copyWith(
                      color: AppColors.black,
                      fontSize: 12.sp,
                      height: 1,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
