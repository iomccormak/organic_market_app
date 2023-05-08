import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:organic_market_app/domain/models/order/order.dart';
import 'package:organic_market_app/domain/models/order/order_status.dart';
import 'package:organic_market_app/presentation/common_widgets/bottom_nav_bar/nav_bar_shadow.dart';
import 'package:organic_market_app/presentation/common_widgets/custom_app_bar.dart';
import 'package:organic_market_app/presentation/pages/order/widgets/order_product_widget.dart';
import 'package:organic_market_app/utils/app_constants/app_colors.dart';
import 'package:organic_market_app/utils/app_constants/app_icons.dart';
import 'package:organic_market_app/utils/app_constants/app_strings.dart';
import 'package:organic_market_app/utils/app_constants/app_text_styles.dart';
import 'package:organic_market_app/utils/formatters/date_formatter.dart';
import 'package:organic_market_app/utils/formatters/text_formatter.dart';
import 'package:organic_market_app/utils/order_constants/delivery.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({
    super.key,
    required this.order,
  });

  final Order order;

  @override
  Widget build(BuildContext context) {
    final Color iconBackground;
    final String icon;
    final String iconLabel;
    final Color iconLabelColor;

    switch (order.status) {
      case OrderStatus.delievered:
        iconBackground = AppColors.greenBackground;
        icon = AppIcons.orderCheck;
        iconLabel = AppStrings.delievered;
        iconLabelColor = AppColors.mainGreen;
        break;
      case OrderStatus.onTheWay:
        iconBackground = AppColors.blueBackground;
        icon = AppIcons.orderTruck;
        iconLabel = AppStrings.onTheWay;
        iconLabelColor = AppColors.blueIcon;
        break;
    }

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(44.h),
        child: const CustomAppBar(
          label: AppStrings.order,
          back: true,
        ),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 35.h,
                  ),
                  Text(
                    order.date.toRusFormat(),
                    style: AppTextStyles.orderTextStyle.copyWith(
                      color: AppColors.mainGrey,
                    ),
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  Text(
                    '${order.getAmount().toString().changeCase()} ${AppStrings.onSum} ${order.getPrice().toStringAsFixed(2)} ${AppStrings.ruble}',
                    style: AppTextStyles.orderTextStyle,
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  Container(
                    width: 115.w,
                    height: 40.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(93.r),
                      ),
                      color: iconBackground,
                    ),
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(icon),
                        SizedBox(
                          width: 7.w,
                        ),
                        Text(
                          iconLabel,
                          style: AppTextStyles.orderTextStyle.copyWith(
                            color: iconLabelColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 35.h,
                  ),
                  Column(
                    children: [
                      ListView.builder(
                        padding: EdgeInsets.only(top: 1.h),
                        physics: const BouncingScrollPhysics(),
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        itemCount: order.products.length,
                        itemBuilder: (context, index) => Column(
                          children: [
                            OrderProductWidget(
                              product: order.products[index],
                              amount: order.amount[index],
                            ),
                            SizedBox(
                              height: 26.h,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.w),
                        child: Row(
                          children: [
                            Container(
                              width: 70.w,
                              height: 70.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(12.r),
                                ),
                                color: AppColors.greenBackground,
                              ),
                              alignment: Alignment.center,
                              child: SvgPicture.asset(AppIcons.truck),
                            ),
                            SizedBox(
                              width: 16.w,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Доставка',
                                  style: AppTextStyles.productWidgetTextStyle
                                      .copyWith(
                                    fontSize: 14.sp,
                                  ),
                                ),
                                Text(
                                  '${Delivery.classicDelivery} ${AppStrings.ruble}',
                                  style: AppTextStyles.priceTextStyle.copyWith(
                                    fontSize: 16.sp,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 26.h,
                  ),
                ],
              ),
            ),
          ),
          const NavBarShadow(),
        ],
      ),
    );
  }
}
