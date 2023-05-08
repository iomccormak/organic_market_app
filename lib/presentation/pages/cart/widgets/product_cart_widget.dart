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

class ProductCartWidget extends StatelessWidget {
  const ProductCartWidget({
    super.key,
    required this.product,
  });

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
                  image: NetworkImage(
                    product.image!,
                    scale: 0.5,
                  ),
                ),
                borderRadius: const BorderRadius.all(Radius.circular(12)),
              ),
            ),
            SizedBox(
              width: 16.w,
            ),
            SizedBox(
              width: 250.w,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 3.h),
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        product.title!,
                        overflow: TextOverflow.ellipsis,
                        style: AppTextStyles.productWidgetTextStyle.copyWith(
                          fontSize: 14.sp,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        '${product.price} ${AppStrings.ruble}',
                        style: AppTextStyles.priceTextStyle.copyWith(
                          fontSize: 16.sp,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        width: 104.w,
                        height: 32.h,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                            color: AppColors.toggleBackground),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            GestureDetector(
                              onTap: () => context
                                  .read<CartBloc>()
                                  .add(CartProductDecremented(product)),
                              child: Container(
                                width: 12.w,
                                height: 12.h,
                                color: Colors.transparent,
                                alignment: Alignment.center,
                                child: SvgPicture.asset(AppIcons.minus),
                              ),
                            ),
                            Text(
                              '${product.count} ${AppStrings.count}',
                              style: AppTextStyles.productWidgetTextStyle,
                            ),
                            GestureDetector(
                              onTap: () => context
                                  .read<CartBloc>()
                                  .add(CartProductIncremented(product)),
                              child: Container(
                                width: 12.w,
                                height: 12.h,
                                color: Colors.transparent,
                                alignment: Alignment.center,
                                child: SvgPicture.asset(AppIcons.plus),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
