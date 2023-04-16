import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:organic_market_app/utils/app_colors.dart';
import 'package:organic_market_app/utils/app_strings.dart';
import 'package:organic_market_app/utils/app_text_styles.dart';

class PhoneConfirmation extends StatelessWidget {
  const PhoneConfirmation({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 339.h,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 22.w,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 20.h,
            ),
            Text(
              AppStrings.phoneConfirmation,
              style: AppTextStyles.bottomSheetTitleTextStyle,
            ),
            SizedBox(
              height: 8.h,
            ),
            Text(
              AppStrings.enterCode,
              textAlign: TextAlign.center,
              style: AppTextStyles.bottomSheetTextStyle,
            ),
            SizedBox(
              height: 24.h,
            ),
            Container(
              width: 343.w,
              height: 51.h,
              color: AppColors.toggleBackground,
              child: TextFormField(
                style: AppTextStyles.bottomSheetTitleTextStyle.copyWith(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                ),
                keyboardType: TextInputType.number,
                cursorWidth: 1,
                cursorColor: AppColors.black,
                maxLength: 4,
                textAlign: TextAlign.center,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  counterText: '',
                ),
              ),
            ),
            SizedBox(
              height: 24.h,
            ),
            Text(
              AppStrings.sendAgain,
              style: AppTextStyles.bottomSheetTextStyle.copyWith(
                color: AppColors.mainGreen,
              ),
            ),
            SizedBox(
              height: 24.h,
            ),
            Container(
              width: 343.w,
              height: 58.h,
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(43),
                ),
                color: AppColors.mainGreen,
              ),
              child: Text(
                AppStrings.confirm,
                style: AppTextStyles.greenButtonTextStyle,
              ),
            )
          ],
        ),
      ),
    );
  }
}
