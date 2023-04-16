import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:organic_market_app/domain/models/product.dart';
import 'package:organic_market_app/utils/app_colors.dart';
import 'package:organic_market_app/utils/app_images.dart';
import 'package:organic_market_app/utils/app_text_styles.dart';

class Tags extends StatelessWidget {
  const Tags({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 55.w,
          height: 24.h,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(4)),
            color: AppColors.red,
          ),
          alignment: Alignment.center,
          child: Text(
            '-${product.discount[1]}%',
            style: AppTextStyles.lowWidgetTextStyle.copyWith(
              fontWeight: FontWeight.w700,
              color: AppColors.white,
            ),
          ),
        ),
        SizedBox(
          width: 8.w,
        ),
        product.organic!
            ? Container(
                width: 98.w,
                height: 24.h,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(4)),
                  color: AppColors.mainGreen,
                ),
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(AppImages.organic),
                    Text(
                      'Органик',
                      style: AppTextStyles.lowWidgetTextStyle.copyWith(
                        fontWeight: FontWeight.w700,
                        color: AppColors.white,
                      ),
                    ),
                  ],
                ),
              )
            : const SizedBox.shrink(),
        SizedBox(
          width: 8.w,
        ),
        product.expressDelivery!
            ? Container(
                width: 155.w,
                height: 24.h,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(4)),
                  color: AppColors.yellow,
                ),
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(AppImages.truck),
                    Text(
                      'Экспресс-доставка',
                      style: AppTextStyles.lowWidgetTextStyle.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              )
            : const SizedBox.shrink(),
      ],
    );
  }
}
