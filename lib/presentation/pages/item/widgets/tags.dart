import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:organic_market_app/domain/models/product/product.dart';
import 'package:organic_market_app/utils/app_constants/app_colors.dart';
import 'package:organic_market_app/utils/app_constants/app_images.dart';
import 'package:organic_market_app/utils/app_constants/app_strings.dart';
import 'package:organic_market_app/utils/app_constants/app_text_styles.dart';

class Tags extends StatelessWidget {
  const Tags({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 55.w,
          height: 24.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(4.r)),
            color: AppColors.red,
          ),
          alignment: Alignment.center,
          child: Text(
            AppStrings.discount,
            style: AppTextStyles.lowWidgetTextStyle.copyWith(
              fontWeight: FontWeight.w700,
              color: AppColors.white,
            ),
          ),
        ),
        SizedBox(
          width: 8.w,
        ),
        Container(
          width: 98.w,
          height: 24.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(4.r)),
            color: AppColors.mainGreen,
          ),
          alignment: Alignment.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(AppImages.organic),
              Text(
                AppStrings.organic,
                style: AppTextStyles.lowWidgetTextStyle.copyWith(
                  fontWeight: FontWeight.w700,
                  color: AppColors.white,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          width: 8.w,
        ),
        Container(
          width: 155.w,
          height: 24.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(4.r)),
            color: AppColors.yellow,
          ),
          alignment: Alignment.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(AppImages.truck),
              Text(
                AppStrings.expressDelivery,
                style: AppTextStyles.lowWidgetTextStyle.copyWith(
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
