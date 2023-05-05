import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get_it/get_it.dart';
import 'package:organic_market_app/domain/api.dart';
import 'package:organic_market_app/domain/models/product.dart';
import 'package:organic_market_app/presentation/pages/cart/bloc/cart_bloc.dart';
import 'package:organic_market_app/utils/app_colors.dart';
import 'package:organic_market_app/utils/app_icons.dart';
import 'package:organic_market_app/utils/app_strings.dart';
import 'package:organic_market_app/utils/app_text_styles.dart';

class BottomBarWithPrice extends StatelessWidget {
  const BottomBarWithPrice({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 610.h),
      child: Container(
        height: 132.h,
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
                    '/ 1 шт.',
                    style: AppTextStyles.bottomBarTextStyle.copyWith(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  )
                ],
              ),
              GestureDetector(
                onTap: () {
                  context.read<CartBloc>().add(CartProductAdded(product));
                  print('added to cart');
                },
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
