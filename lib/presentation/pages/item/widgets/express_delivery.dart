import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:organic_market_app/domain/models/product/product.dart';
import 'package:organic_market_app/utils/app_colors.dart';
import 'package:organic_market_app/utils/app_icons.dart';
import 'package:organic_market_app/utils/app_strings.dart';
import 'package:organic_market_app/utils/app_text_styles.dart';

class ExpressDelivery extends StatelessWidget {
  const ExpressDelivery({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(AppIcons.redTruck),
        SizedBox(
          width: 9.w,
        ),
        Text(
          AppStrings.expressAtMorning,
          style: AppTextStyles.priceTextStyle.copyWith(
            fontSize: 16.sp,
            color: AppColors.red,
          ),
        ),
      ],
    );
  }
}
