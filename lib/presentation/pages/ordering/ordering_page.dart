import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:organic_market_app/domain/models/order/order.dart';
import 'package:organic_market_app/domain/models/product/product.dart';
import 'package:organic_market_app/presentation/common_widgets/bottom_nav_bar/button_under_nav_bar.dart';
import 'package:organic_market_app/presentation/common_widgets/custom_app_bar.dart';
import 'package:organic_market_app/presentation/common_widgets/main_green_button.dart';
import 'package:organic_market_app/presentation/pages/cart/bloc/cart_bloc.dart';
import 'package:organic_market_app/presentation/pages/my_orders/bloc/my_orders_bloc.dart';
import 'package:organic_market_app/presentation/pages/ordering/widgets/input_field.dart';
import 'package:organic_market_app/presentation/pages/ordering/widgets/order_info.dart';
import 'package:organic_market_app/presentation/pages/personal_info/widgets/date_input.dart';
import 'package:organic_market_app/utils/app_colors.dart';
import 'package:organic_market_app/utils/app_icons.dart';
import 'package:organic_market_app/utils/app_strings.dart';
import 'package:organic_market_app/utils/app_text_styles.dart';
import 'package:organic_market_app/utils/text_formatter.dart';

class OrderingPage extends StatelessWidget {
  const OrderingPage({
    super.key,
    required this.products,
    required this.totalPrice,
  });

  final List<Product> products;
  final double totalPrice;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(44.h),
        child: const CustomAppBar(
          label: AppStrings.formingOrder,
          back: true,
        ),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Column(
                children: [
                  SizedBox(
                    height: 30.h,
                  ),
                  const InputField(
                    title: AppStrings.addressDel,
                    text: AppStrings.adress,
                  ),
                  SizedBox(
                    height: 19.h,
                  ),
                  DateInput(
                    fieldName: AppStrings.dateAndTimeDel,
                    controller: TextEditingController(),
                  ),
                  const InputField(
                    title: AppStrings.wayOfPayment,
                    text: AppStrings.bankCard,
                  ),
                  SizedBox(
                    height: 19.h,
                  ),
                  Row(
                    children: [
                      Text(
                        AppStrings.getPoints,
                        style: AppTextStyles.appBarTextStyle.copyWith(
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(
                        width: 7.w,
                      ),
                      SvgPicture.asset(AppIcons.question),
                    ],
                  ),
                  SizedBox(
                    height: 19.h,
                  ),
                  Container(
                    width: 343.w,
                    height: 60.h,
                    color: AppColors.toggleBackground,
                    padding: EdgeInsets.only(left: 12.w),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      AppStrings.commentary,
                      style: AppTextStyles.appBarTextStyle.copyWith(
                        color: AppColors.mainGrey,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  OrderInfo(
                    products: products,
                    totalPrice: totalPrice,
                  )
                ],
              ),
            ),
            ButtonUnderNavBar(
              button: GestureDetector(
                onTap: () {
                  context.read<MyOrdersBloc>().add(
                        MyOrdersAdded(
                          order: Order(
                            products: products,
                            date: DateTime.now(),
                          ),
                        ),
                      );
                  context.read<CartBloc>().add(const CartCheckOut());
                  context.router.pop();
                },
                child: const MainGreenButton(
                  label: AppStrings.formOrder,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
