import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:organic_market_app/domain/models/product/product.dart';
import 'package:organic_market_app/navigation/auto_router.gr.dart';
import 'package:organic_market_app/presentation/pages/cart/bloc/cart_bloc.dart';
import 'package:organic_market_app/utils/app_colors.dart';
import 'package:organic_market_app/utils/app_icons.dart';
import 'package:organic_market_app/utils/app_strings.dart';
import 'package:organic_market_app/utils/app_text_styles.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.router.navigate(ItemRoute(product: product));
      },
      child: Container(
        width: 168.w,
        height: 240.h,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(12)),
          boxShadow: [
            BoxShadow(
              color: AppColors.shadowColor,
              blurRadius: 8,
              spreadRadius: 1,
            ),
          ],
          color: AppColors.white,
        ),
        alignment: Alignment.center,
        child: Stack(
          children: [
            Container(
              width: 166.w,
              height: 133.h,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    product.image!,
                    scale: 0.5,
                  ),
                ),
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(12),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 12.w,
                right: 32.w,
                top: 141.h,
              ),
              child: Text(
                product.title!,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style: AppTextStyles.productWidgetTextStyle,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 12.w,
                right: 32.w,
                top: 177.h,
              ),
              child: Text(
                'за 1 шт.',
                style: AppTextStyles.productWidgetTextStyle.copyWith(
                  color: AppColors.mainGrey,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 12.w,
                right: 60.w,
                top: 205.h,
                bottom: 12.h,
              ),
              child: Text(
                "${product.price} ${AppStrings.ruble}",
                style: AppTextStyles.priceTextStyle,
              ),
            ),
            GestureDetector(
              onTap: () =>
                  context.read<CartBloc>().add(CartProductAdded(product)),
              child: Padding(
                padding: EdgeInsets.only(
                  left: 104.w,
                  right: 12.w,
                  top: 201.h,
                ),
                child: Container(
                  width: 52.w,
                  height: 31.h,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(68),
                    ),
                    color: AppColors.mainGreen,
                  ),
                  child: Transform.scale(
                    scale: 0.5,
                    child: SvgPicture.asset(AppIcons.cart),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
