import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:organic_market_app/navigation/auto_router.gr.dart';
import 'package:organic_market_app/presentation/common_widgets/bottom_nav_bar/nav_bar_shadow.dart';
import 'package:organic_market_app/presentation/common_widgets/custom_app_bar.dart';
import 'package:organic_market_app/utils/app_constants/app_colors.dart';
import 'package:organic_market_app/utils/app_constants/app_strings.dart';
import 'package:organic_market_app/utils/app_constants/app_text_styles.dart';
import 'package:organic_market_app/utils/formatters/text_formatter.dart';

class SuccesfullOrderPage extends StatelessWidget {
  const SuccesfullOrderPage({
    super.key,
    required this.amount,
    required this.totalPrice,
  });

  final int amount;
  final double totalPrice;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(44.h),
        child: const CustomAppBar(label: AppStrings.cart),
      ),
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  AppStrings.success,
                  style: AppTextStyles.titleTextStyle.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 9.h,
                ),
                Text(
                  AppStrings.id,
                  style: AppTextStyles.bottomBarTextStyle.copyWith(
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Text(
                  '${amount.toString().changeCase()} ${AppStrings.onSum} ${totalPrice.toStringAsFixed(2)} ${AppStrings.ruble}',
                  style: AppTextStyles.bottomBarTextStyle.copyWith(
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: 9.h,
                ),
                Text(
                  AppStrings.open,
                  style: AppTextStyles.bottomBarTextStyle.copyWith(
                    color: AppColors.mainGreen,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: 24.h,
                ),
                GestureDetector(
                  onTap: () {
                    context.router.navigate(const CartRoute());
                  },
                  child: Container(
                    width: 247.w,
                    height: 47.h,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(43.r),
                      ),
                      color: AppColors.mainGreen,
                    ),
                    child: Text(
                      AppStrings.continueBuy,
                      style: AppTextStyles.greenButtonTextStyle.copyWith(
                        fontSize: 16.sp,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const NavBarShadow(),
        ],
      ),
    );
  }
}
