import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:organic_market_app/data/repository/temp_repository.dart';
import 'package:organic_market_app/navigation/auto_router.gr.dart';
import 'package:organic_market_app/presentation/common_widgets/bottom_nav_bar/nav_bar_shadow.dart';
import 'package:organic_market_app/presentation/common_widgets/button_under_nav_bar.dart';
import 'package:organic_market_app/presentation/common_widgets/main_green_button.dart';
import 'package:organic_market_app/presentation/common_widgets/modal_bottom_sheet.dart';
import 'package:organic_market_app/presentation/pages/cart/modal_bottom_sheets/phone_confirmation_page.dart';
import 'package:organic_market_app/presentation/pages/cart/modal_bottom_sheets/phone_input_page.dart';
import 'package:organic_market_app/presentation/pages/cart/widgets/cart_info.dart';
import 'package:organic_market_app/presentation/pages/cart/widgets/empty_screen.dart';
import 'package:organic_market_app/presentation/pages/cart/widgets/product_cart_widget.dart';
import 'package:organic_market_app/presentation/pages/cart/widgets/recomendations.dart';
import 'package:organic_market_app/utils/app_colors.dart';
import 'package:organic_market_app/utils/app_strings.dart';
import 'package:organic_market_app/utils/app_text_styles.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return EmptyScreen();
    /*return Stack(
      children: [
        SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 100.h,
              ),
              ListView.builder(
                padding: EdgeInsets.only(top: 1.h),
                physics: const NeverScrollableScrollPhysics(),
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: TempRepository.orders[2].products.length,
                itemBuilder: (context, index) => Column(
                  children: [
                    ProductCartWidget(
                      product: TempRepository.orders[2].products[index],
                    ),
                    SizedBox(
                      height: 26.h,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 27.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Text(
                  AppStrings.recommend,
                  style: AppTextStyles.categoryTextStyle.copyWith(
                    fontSize: 20.sp,
                  ),
                ),
              ),
              SizedBox(
                height: 18.h,
              ),
              Recomendations(),
              SizedBox(
                height: 40.h,
              ),
              CartInfo(),
              SizedBox(
                height: 120.h,
              ),
            ],
          ),
        ),
        ButtonUnderNavBar(
          button: GestureDetector(
            onTap: () async {
              await context.router.pop();
              modalBottomSheet(context, PhoneInputPage());
            },
            child: const MainGreenButton(
              label: AppStrings.deal,
            ),
          ),
        ),
      ],
    );*/
  }
}
