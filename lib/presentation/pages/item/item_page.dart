import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:organic_market_app/domain/models/product.dart';
import 'package:organic_market_app/presentation/pages/item/widgets/bottom_bar_with_price.dart';
import 'package:organic_market_app/presentation/pages/item/widgets/express_delivery.dart';
import 'package:organic_market_app/presentation/pages/item/widgets/product_images.dart';
import 'package:organic_market_app/presentation/pages/item/widgets/product_brand.dart';
import 'package:organic_market_app/presentation/pages/item/widgets/recommendations.dart';
import 'package:organic_market_app/presentation/pages/item/widgets/tags.dart';
import 'package:organic_market_app/presentation/pages/item/widgets/custom_toggle_switch.dart';
import 'package:organic_market_app/utils/app_colors.dart';
import 'package:organic_market_app/utils/app_strings.dart';
import 'package:organic_market_app/utils/app_text_styles.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 58.h,
                ),
                ProductImages(
                  product: product,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 16.w,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 24.h,
                      ),
                      Tags(
                        product: product,
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                      Text(
                        product.title,
                        style: AppTextStyles.titleTextStyle.copyWith(
                          fontSize: 20.sp,
                        ),
                      ),
                      SizedBox(
                        height: 32.h,
                      ),
                      ExpressDelivery(
                        product: product,
                      ),
                      SizedBox(
                        height: 32.h,
                      ),
                      CustomToggleSwitch(
                        product: product,
                      ),
                      SizedBox(
                        height: 24.h,
                      ),
                      Row(
                        children: [
                          Text(
                            AppStrings.description,
                            style: AppTextStyles.titleTextStyle.copyWith(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(
                            width: 16.w,
                          ),
                          Text(
                            AppStrings.features,
                            style: AppTextStyles.titleTextStyle.copyWith(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w600,
                              color: AppColors.mainGrey,
                            ),
                          ),
                          SizedBox(
                            width: 16.w,
                          ),
                          Text(
                            AppStrings.reviews,
                            style: AppTextStyles.titleTextStyle.copyWith(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w600,
                              color: AppColors.mainGrey,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                      Text(
                        'Альтернативный Флэнк стейк вырезается из нежирной брюшной части ближе к ребрам и имеет уникальный насыщенный вкус и яркий мясной аромат! Многогранен вариантами приготовления – отлично проявляется себя приготовленным целиком, или порезанным на слайсы. Здесь кулинарному экспериментатору есть где разгуляться! Просто пожарить, потушить или выдержать в маринаде – этот стейк подойдет для любых Ваших идей, благодаря своей текстуре с хорошо видимыми волокнами. Для мясного поголовья «Углече Поле» выбрана Абердин-Ангусская порода коров – признанная лучшей по качеству и вкусу мяса и стейков. При пастбищном содержании (то есть наши животные свободно пасутся на поле) мясо получается более диетическим и таким, каким оно и должно быть - в нем меньше жира, оно сочное, мягкое и обладает насыщенным вкусом.',
                        style: AppTextStyles.productWidgetTextStyle.copyWith(
                          fontSize: 16.sp,
                          color: AppColors.mainGrey,
                        ),
                      ),
                      SizedBox(
                        height: 24.h,
                      ),
                    ],
                  ),
                ),
                ProductBrand(
                  product: product,
                ),
                SizedBox(
                  height: 24.h,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 16.w),
                  child: Text(
                    AppStrings.recommend,
                    style: AppTextStyles.productWidgetTextStyle.copyWith(
                      fontSize: 20.sp,
                    ),
                  ),
                ),
                SizedBox(
                  height: 18.h,
                ),
                const Recommendations(),
                SizedBox(
                  height: 110.h,
                ),
              ],
            ),
          ),
          BottomBarWithPrice(product: product),
        ],
      ),
    );
  }
}
