import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:organic_market_app/domain/models/product/product.dart';
import 'package:organic_market_app/presentation/pages/cart/bloc/cart_bloc.dart';
import 'package:organic_market_app/utils/app_constants/app_colors.dart';
import 'package:organic_market_app/utils/app_constants/app_icons.dart';
import 'package:organic_market_app/utils/app_constants/app_strings.dart';
import 'package:organic_market_app/utils/app_constants/app_text_styles.dart';

class BottomNavBarWithPrice extends StatelessWidget {
  const BottomNavBarWithPrice({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 600.h),
      child: Container(
        height: 132.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12.r),
            topRight: Radius.circular(12.r),
          ),
          boxShadow: const [
            BoxShadow(
              color: AppColors.shadowColor,
              blurRadius: 15,
              spreadRadius: 7,
            ),
          ],
          color: AppColors.white,
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 11.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 10.h),
                        child: RotationTransition(
                          turns: const AlwaysStoppedAnimation(-9 / 360),
                          child: Container(
                            width: 100.w,
                            height: 2.h,
                            color: AppColors.red,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            "${product.price} ${AppStrings.ruble}",
                            style: AppTextStyles.priceTextStyle.copyWith(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w500,
                              color: AppColors.mainGrey,
                            ),
                          ),
                          SizedBox(
                            width: 4.w,
                          ),
                          Text(
                            AppStrings.amount,
                            style: AppTextStyles.bottomBarTextStyle.copyWith(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "${((product.price!) * 0.9).toStringAsFixed(2)} ${AppStrings.ruble}",
                        style: AppTextStyles.priceTextStyle.copyWith(
                            fontSize: 28.sp,
                            fontWeight: FontWeight.w500,
                            color: AppColors.red),
                      ),
                      SizedBox(
                        width: 4.w,
                      ),
                      Text(
                        AppStrings.amount,
                        style: AppTextStyles.bottomBarTextStyle.copyWith(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                ],
              ),
              GestureDetector(
                onTap: () =>
                    context.read<CartBloc>().add(CartProductAdded(product)),
                child: Container(
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
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
