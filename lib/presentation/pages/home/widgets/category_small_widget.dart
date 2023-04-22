import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:organic_market_app/domain/models/main_category.dart';
import 'package:organic_market_app/utils/app_colors.dart';
import 'package:organic_market_app/utils/app_text_styles.dart';

class CategorySmallWidget extends StatelessWidget {
  const CategorySmallWidget({super.key, required this.category});

  final MainCategory category;

  @override
  Widget build(BuildContext context) {
    int topPadding;

    category.title.length > 13
        ? category.title.length > 26
            ? topPadding = 62
            : topPadding = 74
        : topPadding = 86;

    return Row(
      children: [
        Container(
          width: 104.w,
          height: 104.h,
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
    );
    /**/
  }
}
