import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:organic_market_app/presentation/pages/cart/bloc/cart_bloc.dart';
import 'package:organic_market_app/utils/app_constants/app_colors.dart';
import 'package:organic_market_app/utils/app_constants/app_strings.dart';
import 'package:organic_market_app/utils/app_constants/app_text_styles.dart';
import 'package:organic_market_app/utils/formatters/text_formatter.dart';

class CartInfo extends StatelessWidget {
  const CartInfo({
    super.key,
    required this.discount,
  });

  final double discount;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartBloc, CartState>(
      builder: (context, state) {
        if (state is CartInitial) {
          return const CircularProgressIndicator();
        } else if (state is CartLoad) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      state.cart.getAmount().toString().changeCase(),
                      style: AppTextStyles.priceTextStyle.copyWith(
                        fontWeight: FontWeight.w400,
                        color: AppColors.mainGrey,
                      ),
                    ),
                    Text(
                      '${state.totalPrice.toStringAsFixed(2)} ${AppStrings.ruble}',
                      style: AppTextStyles.priceTextStyle.copyWith(
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 4.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      AppStrings.wordDiscount,
                      style: AppTextStyles.priceTextStyle.copyWith(
                        fontWeight: FontWeight.w400,
                        color: AppColors.red,
                      ),
                    ),
                    Text(
                      '-${(state.totalPrice * discount).toStringAsFixed(2)} ${AppStrings.ruble}',
                      style: AppTextStyles.priceTextStyle.copyWith(
                        fontWeight: FontWeight.w400,
                        color: AppColors.red,
                      ),
                    )
                  ],
                ),
              ],
            ),
          );
        }
        return const SizedBox.shrink();
      },
    );
  }
}
