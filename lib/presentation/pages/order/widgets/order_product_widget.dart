import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:organic_market_app/domain/models/product/product.dart';
import 'package:organic_market_app/presentation/common_widgets/loading_animation.dart';
import 'package:organic_market_app/utils/app_constants/app_strings.dart';
import 'package:organic_market_app/utils/app_constants/app_text_styles.dart';

class OrderProductWidget extends StatelessWidget {
  const OrderProductWidget({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 72.h,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Row(
          children: [
            Container(
              width: 70.w,
              height: 70.h,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(product.image!),
                ),
                borderRadius: BorderRadius.all(Radius.circular(12.r)),
              ),
            ),
            SizedBox(
              width: 16.w,
            ),
            SizedBox(
              width: 250.w,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.title!,
                    overflow: TextOverflow.ellipsis,
                    style: AppTextStyles.productWidgetTextStyle.copyWith(
                      fontSize: 14.sp,
                    ),
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  Text(
                    '${product.price} ${AppStrings.ruble}',
                    style: AppTextStyles.priceTextStyle.copyWith(
                      fontSize: 16.sp,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
