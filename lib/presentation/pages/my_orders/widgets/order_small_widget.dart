import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:organic_market_app/domain/models/order.dart';
import 'package:organic_market_app/domain/models/order_status.dart';
import 'package:organic_market_app/navigation/auto_router.gr.dart';
import 'package:organic_market_app/utils/app_colors.dart';
import 'package:organic_market_app/utils/app_icons.dart';
import 'package:organic_market_app/utils/app_strings.dart';
import 'package:organic_market_app/utils/app_text_styles.dart';
import 'package:organic_market_app/utils/date_formatter.dart';
import 'package:organic_market_app/utils/text_formatter.dart';

class OrderSmallWidget extends StatelessWidget {
  const OrderSmallWidget({super.key, required this.order});

  final Order order;

  @override
  Widget build(BuildContext context) {
    final Color iconBackground;
    final String icon;

    switch (order.status) {
      case OrderStatus.delievered:
        iconBackground = AppColors.greenBackground;
        icon = AppIcons.orderCheck;
        break;
      case OrderStatus.onTheWay:
        iconBackground = AppColors.blueBackground;
        icon = AppIcons.orderTruck;
        break;
    }

    return GestureDetector(
      onTap: () {
        context.router.navigate(OrderRoute(order: order));
      },
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Container(
          color: Colors.transparent,
          height: 43.h,
          child: Row(
            children: [
              Container(
                width: 42.w,
                height: 42.w,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: iconBackground,
                ),
                alignment: Alignment.center,
                child: SvgPicture.asset(icon),
              ),
              SizedBox(
                width: 16.w,
              ),
              SizedBox(
                width: 280.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          order.date.toRusFormat(),
                          style: AppTextStyles.orderTextStyle.copyWith(
                            color: AppColors.mainGrey,
                          ),
                        ),
                        Text(
                          '${order.products.length.toString().changeCase()} на сумму ${order.getPrice()} ${AppStrings.ruble}',
                          style: AppTextStyles.orderTextStyle,
                        ),
                      ],
                    ),
                    SvgPicture.asset(AppIcons.backToRight),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
