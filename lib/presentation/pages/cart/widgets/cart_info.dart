import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:organic_market_app/utils/app_colors.dart';
import 'package:organic_market_app/utils/app_strings.dart';
import 'package:organic_market_app/utils/app_text_styles.dart';

class CartInfo extends StatelessWidget {
  const CartInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '3 товара',
                style: AppTextStyles.priceTextStyle.copyWith(
                  fontWeight: FontWeight.w400,
                  color: AppColors.mainGrey,
                ),
              ),
              Text(
                '1850 ${AppStrings.ruble}',
                style: AppTextStyles.priceTextStyle.copyWith(
                  fontWeight: FontWeight.w400,
                ),
              )
            ],
          ),
          SizedBox(
            height: 4.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Скидка 10%',
                style: AppTextStyles.priceTextStyle.copyWith(
                  fontWeight: FontWeight.w400,
                  color: AppColors.red,
                ),
              ),
              Text(
                '-150 ${AppStrings.ruble}',
                style: AppTextStyles.priceTextStyle.copyWith(
                  fontWeight: FontWeight.w400,
                  color: AppColors.red,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
