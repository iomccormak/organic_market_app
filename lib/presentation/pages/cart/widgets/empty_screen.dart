import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:organic_market_app/navigation/auto_router.gr.dart';
import 'package:organic_market_app/presentation/pages/cart/modal_bottom_sheets/phone_input_page.dart';
import 'package:organic_market_app/utils/app_colors.dart';
import 'package:organic_market_app/utils/app_strings.dart';
import 'package:organic_market_app/utils/app_text_styles.dart';

class EmptyScreen extends StatelessWidget {
  const EmptyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              AppStrings.cartIsEmpty,
              style: AppTextStyles.titleTextStyle.copyWith(
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 9.h,
            ),
            Text(
              AppStrings.addedProd,
              style: AppTextStyles.bottomBarTextStyle.copyWith(
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              height: 36.h,
            ),
            GestureDetector(
              onTap: () => context.router.navigate(CatalogRouter()),
              child: Container(
                width: 247.w,
                height: 47.h,
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(43),
                  ),
                  color: AppColors.mainGreen,
                ),
                child: Text(
                  AppStrings.goShopping,
                  style: AppTextStyles.greenButtonTextStyle.copyWith(
                    fontSize: 16.sp,
                  ),
                ),
              ),
            ),

            // ORIGINAL WITH NO BUTTON
            /*Container(
              width: 247.w,
              height: 47.h,
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(43),
                ),
                color: AppColors.mainGreen,
              ),
              child: Text(
                AppStrings.goShopping,
                style: AppTextStyles.greenButtonTextStyle.copyWith(
                  fontSize: 16.sp,
                ),
              ),
            ),*/
          ],
        ),
      ),
    );
  }

  /*Future<dynamic> modalBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(10),
        ),
      ),
      builder: (context) {
        return Padding(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: const PhoneInputPage(),
          //child: PhoneConfirmation(),
          //child: NameInput(),
        );
      },
    );
  }*/
}
