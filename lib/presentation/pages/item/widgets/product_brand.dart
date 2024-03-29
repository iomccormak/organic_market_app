import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:organic_market_app/domain/models/product/product.dart';
import 'package:organic_market_app/utils/app_constants/app_colors.dart';
import 'package:organic_market_app/utils/app_constants/app_icons.dart';
import 'package:organic_market_app/utils/app_constants/app_strings.dart';
import 'package:organic_market_app/utils/app_constants/app_text_styles.dart';

class ProductBrand extends StatelessWidget {
  const ProductBrand({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64.h,
      color: AppColors.toggleBackground,
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.only(
          left: 27.w,
          right: 36.w,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              AppStrings.thisBrand,
              style: AppTextStyles.lowWidgetTextStyle.copyWith(
                fontSize: 13.sp,
              ),
            ),
            SvgPicture.asset(AppIcons.backToRight),
          ],
        ),
      ),
    );
  }
}
