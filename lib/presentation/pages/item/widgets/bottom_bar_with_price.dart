import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:organic_market_app/presentation/common_widgets/bottom_bar/temp_bottom_bar_widget.dart';
import 'package:organic_market_app/domain/models/product.dart';
import 'package:organic_market_app/utils/app_colors.dart';
import 'package:organic_market_app/utils/app_icons.dart';
import 'package:organic_market_app/utils/app_strings.dart';
import 'package:organic_market_app/utils/app_text_styles.dart';

class BottomBarWithPrice extends StatelessWidget {
  const BottomBarWithPrice({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Container(
      //clipBehavior: Clip.hardEdge,
      height: 62.h + 75.h,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(12),
          topRight: Radius.circular(12),
        ),
        boxShadow: [
          BoxShadow(
            color: AppColors.shadowColor,
            blurRadius: 15,
            spreadRadius: 7,
          ),
        ],
        color: AppColors.white,
      ),
      child: Column(
        children: [
          SizedBox(
            height: 75.h,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 11.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        "${product.price} ${AppStrings.ruble}",
                        style: AppTextStyles.priceTextStyle.copyWith(
                          fontSize: 28.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        width: 4.w,
                      ),
                      Text(
                        '/ ${product.weight.first.split(' ').last}',
                        style: AppTextStyles.bottomBarTextStyle.copyWith(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                  Container(
                    width: 150.w,
                    height: 48.h,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(43),
                      ),
                      color: AppColors.mainGreen,
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 21.w,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SvgPicture.asset(AppIcons.cart),
                          Text(
                            AppStrings.inCart,
                            style: AppTextStyles.greenButtonTextStyle,
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          //const BottomBarWidget(),
        ],
      ),
    );
  }
}
