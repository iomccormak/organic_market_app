import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:organic_market_app/presentation/pages/modal_bottom_sheets/modal_bottom_sheet.dart';
import 'package:organic_market_app/presentation/pages/modal_bottom_sheets/order/phone_confirmation_page.dart';
import 'package:organic_market_app/utils/app_constants/app_colors.dart';
import 'package:organic_market_app/utils/app_constants/app_strings.dart';
import 'package:organic_market_app/utils/app_constants/app_text_styles.dart';
import 'package:organic_market_app/utils/validation/validation.dart';

class PhoneInputPage extends StatelessWidget {
  const PhoneInputPage({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();

    return SizedBox(
      height: 375.h,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 16.w,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 20.h,
            ),
            Text(
              AppStrings.phoneNumber,
              style: AppTextStyles.bottomSheetTitleTextStyle,
            ),
            SizedBox(
              height: 8.h,
            ),
            Text(
              AppStrings.toContinue,
              style: AppTextStyles.bottomSheetTextStyle,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 24.h,
            ),
            Container(
              width: 343.w,
              height: 51.h,
              color: AppColors.toggleBackground,
              alignment: Alignment.center,
              child: Form(
                key: formKey,
                child: TextFormField(
                  style: AppTextStyles.bottomSheetTitleTextStyle.copyWith(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                  ),
                  initialValue: AppStrings.plusSeven,
                  keyboardType: TextInputType.number,
                  cursorWidth: 1,
                  cursorColor: AppColors.black,
                  maxLength: 12,
                  textAlign: TextAlign.center,
                  decoration: const InputDecoration(
                    isDense: true,
                    border: InputBorder.none,
                    counterText: '',
                    errorStyle: TextStyle(
                      fontSize: 12,
                      height: 1.02,
                    ),
                  ),
                  validator: Validation.phoneValidation,
                ),
              ),
            ),
            SizedBox(
              height: 24.h,
            ),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                style: AppTextStyles.bottomSheetSmallTextStyle,
                children: [
                  const TextSpan(
                    text: AppStrings.agree,
                  ),
                  TextSpan(
                    text: AppStrings.uslSell,
                    style: AppTextStyles.bottomSheetSmallTextStyle
                        .copyWith(color: AppColors.mainGreen),
                  ),
                  TextSpan(
                    text: AppStrings.policyOne,
                    style: AppTextStyles.bottomSheetSmallTextStyle
                        .copyWith(color: AppColors.mainGreen),
                  ),
                  const TextSpan(
                    text: ' и ',
                  ),
                  TextSpan(
                    text: AppStrings.policyTwo,
                    style: AppTextStyles.bottomSheetSmallTextStyle
                        .copyWith(color: AppColors.mainGreen),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 24.h,
            ),
            GestureDetector(
              onTap: () async {
                if (formKey.currentState!.validate()) {
                  await modalBottomSheet(
                      context, const PhoneConfirmationPage());
                  context.router.pop();
                }
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
                  AppStrings.getCode,
                  style: AppTextStyles.greenButtonTextStyle,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
