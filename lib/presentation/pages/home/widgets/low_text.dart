import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:organic_market_app/utils/app_constants/app_colors.dart';
import 'package:organic_market_app/utils/app_constants/app_strings.dart';
import 'package:organic_market_app/utils/app_constants/app_text_styles.dart';

class LowText extends StatelessWidget {
  const LowText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            AppStrings.delivery,
            style: AppTextStyles.lowWidgetTextStyle.copyWith(
              color: AppColors.mainGreen,
            ),
          ),
          Text(
            AppStrings.payment,
            style: AppTextStyles.lowWidgetTextStyle.copyWith(
              color: AppColors.mainGreen,
            ),
          ),
          Text(
            AppStrings.support,
            style: AppTextStyles.lowWidgetTextStyle.copyWith(
              color: AppColors.mainGreen,
            ),
          ),
          Text(
            AppStrings.sertif,
            style: AppTextStyles.lowWidgetTextStyle.copyWith(
              color: AppColors.mainGreen,
            ),
          )
        ],
      ),
    );
  }
}
