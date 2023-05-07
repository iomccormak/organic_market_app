import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:organic_market_app/presentation/pages/modal_bottom_sheets/modal_bottom_sheet.dart';
import 'package:organic_market_app/presentation/pages/modal_bottom_sheets/order/name_input_page.dart';
import 'package:organic_market_app/utils/app_constants/app_colors.dart';
import 'package:organic_market_app/utils/app_constants/app_strings.dart';
import 'package:organic_market_app/utils/app_constants/app_text_styles.dart';
import 'package:organic_market_app/utils/validation/validation.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class PhoneConfirmationPage extends StatelessWidget {
  const PhoneConfirmationPage({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
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
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              alignment: Alignment.center,
              child: Form(
                key: formKey,
                child: PinCodeTextField(
                  appContext: context,
                  length: 4,
                  onChanged: (value) => null,
                  keyboardType: TextInputType.number,
                  pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.all(Radius.circular(12.r)),
                    borderWidth: 0,
                    activeColor: Colors.transparent,
                    inactiveColor: AppColors.secondGrey,
                    errorBorderColor: Colors.transparent,
                    selectedFillColor: AppColors.secondGrey,
                    inactiveFillColor: AppColors.secondGrey,
                    selectedColor: Colors.transparent,
                    disabledColor: AppColors.secondGrey,
                    activeFillColor: AppColors.secondGrey,
                  ),
                  validator: Validation.codeValidation,
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
            GestureDetector(
              onTap: () async {
                if (formKey.currentState!.validate()) {
                  await modalBottomSheet(context, const NameInputPage());
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
                  AppStrings.confirm,
                  style: AppTextStyles.greenButtonTextStyle,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
