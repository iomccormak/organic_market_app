import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:organic_market_app/domain/models/order.dart';
import 'package:organic_market_app/domain/models/order_status.dart';
import 'package:organic_market_app/presentation/pages/order/widgets/order_product_widget.dart';
import 'package:organic_market_app/utils/app_colors.dart';
import 'package:organic_market_app/utils/app_icons.dart';
import 'package:organic_market_app/utils/app_strings.dart';
import 'package:organic_market_app/utils/app_text_styles.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({super.key, required this.order});

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
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 70.h,
            ),
            Text(
              DateFormat('dd.MM.yyyy').format(order.date),
              style: AppTextStyles.orderTextStyle.copyWith(
                color: AppColors.mainGrey,
              ),
            ),
            SizedBox(
              height: 4.h,
            ),
            Text(
              '${order.products.length} товар(ов) на сумму ${order.getPrice()} ${AppStrings.ruble}',
              style: AppTextStyles.orderTextStyle,
            ),
            SizedBox(
              height: 24.h,
            ),
            Container(
              width: 115.w,
              height: 40.h,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(
                  Radius.circular(93),
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
              height: 25.h,
            ),
            SizedBox(
              height: 540.h,
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: order.products.length,
                itemBuilder: (context, index) => Column(
                  children: [
                    OrderProductWidget(
                      product: order.products[index],
                    ),
                    SizedBox(
                      height: 26.h,
                    ),
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
