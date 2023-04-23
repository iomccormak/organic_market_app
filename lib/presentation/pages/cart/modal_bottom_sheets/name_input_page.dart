import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:organic_market_app/presentation/common_widgets/modal_bottom_sheet.dart';
import 'package:organic_market_app/presentation/pages/cart/modal_bottom_sheets/phone_confirmation_page.dart';
import 'package:organic_market_app/utils/app_colors.dart';
import 'package:organic_market_app/utils/app_strings.dart';
import 'package:organic_market_app/utils/app_text_styles.dart';

class NameInputPage extends StatelessWidget {
  const NameInputPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 242.h,
      child: Column(
        children: [
          SizedBox(
            height: 40.h,
          ),
          Text(
            AppStrings.nameInput,
            style: AppTextStyles.bottomSheetTitleTextStyle,
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
              keyboardType: TextInputType.text,
              cursorWidth: 1,
              cursorColor: AppColors.black,
              textAlign: TextAlign.center,
              decoration: const InputDecoration(
                border: InputBorder.none,
              ),
            ),
          ),
          SizedBox(
            height: 24.h,
          ),
          GestureDetector(
            onTap: () async {
              await context.router.pop();
            },
            child: Container(
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
                AppStrings.continueOrder,
                style: AppTextStyles.greenButtonTextStyle,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
