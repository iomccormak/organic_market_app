import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:organic_market_app/domain/models/product/product.dart';
import 'package:organic_market_app/utils/app_constants/app_colors.dart';
import 'package:organic_market_app/utils/app_constants/app_strings.dart';
import 'package:organic_market_app/utils/app_constants/app_text_styles.dart';
import 'package:organic_market_app/utils/formatters/text_formatter.dart';

class OrderInfo extends StatelessWidget {
  const OrderInfo({
    super.key,
    required this.products,
    required this.totalPrice,
  });

  final List<Product> products;
  final double totalPrice;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _drawRow(
          products.length.toString().changeCase(),
          '${totalPrice.toStringAsFixed(2)} ${AppStrings.ruble}',
          AppColors.mainGrey,
        ),
        SizedBox(
          height: 4.h,
        ),
        _drawRow(
          AppStrings.wordDiscount,
          '${(totalPrice * 0.1).toStringAsFixed(2)} ${AppStrings.ruble}',
          AppColors.red,
        ),
        SizedBox(
          height: 4.h,
        ),
        _drawRow(
          AppStrings.delivery,
          '99 ${AppStrings.ruble}',
          AppColors.mainGrey,
        ),
        SizedBox(
          height: 16.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              AppStrings.sum,
              style: AppTextStyles.titleTextStyle
                  .copyWith(fontWeight: FontWeight.w500),
            ),
            Text(
              '${(totalPrice * 0.9 + 99).toStringAsFixed(2)} ${AppStrings.ruble}',
              style: AppTextStyles.titleTextStyle
                  .copyWith(fontWeight: FontWeight.w500),
            )
          ],
        )
      ],
    );
  }

  Row _drawRow(String leftText, String rightText, Color color) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          leftText,
          style: AppTextStyles.priceTextStyle.copyWith(
            fontWeight: FontWeight.w400,
            color: color,
          ),
        ),
        Text(
          rightText,
          style: AppTextStyles.priceTextStyle.copyWith(
            fontWeight: FontWeight.w400,
            color: color,
          ),
        )
      ],
    );
  }
}
