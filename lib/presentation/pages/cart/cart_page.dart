import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:organic_market_app/navigation/auto_router.gr.dart';
import 'package:organic_market_app/presentation/common_widgets/custom_app_bar.dart';
import 'package:organic_market_app/presentation/common_widgets/bottom_nav_bar/button_under_nav_bar.dart';
import 'package:organic_market_app/presentation/common_widgets/main_green_button.dart';
import 'package:organic_market_app/presentation/pages/modal_bottom_sheets/modal_bottom_sheet.dart';
import 'package:organic_market_app/presentation/pages/cart/bloc/cart_bloc.dart';
import 'package:organic_market_app/presentation/pages/modal_bottom_sheets/order/phone_input_page.dart';
import 'package:organic_market_app/presentation/pages/cart/widgets/cart_info.dart';
import 'package:organic_market_app/presentation/pages/cart/widgets/empty_screen.dart';
import 'package:organic_market_app/presentation/pages/cart/widgets/product_cart_widget.dart';
import 'package:organic_market_app/utils/app_constants/app_strings.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(44.h),
        child: const CustomAppBar(
          label: AppStrings.cart,
        ),
      ),
      body: BlocBuilder<CartBloc, CartState>(
        builder: (context, state) {
          if (state is CartInitial) {
            return const CircularProgressIndicator();
          } else if (state is CartLoad) {
            return state.cart.products.isNotEmpty
                ? Stack(
                    children: [
                      SingleChildScrollView(
                        physics: const BouncingScrollPhysics(),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 30.h,
                            ),
                            ListView.builder(
                              padding: EdgeInsets.only(top: 1.h),
                              physics: const NeverScrollableScrollPhysics(),
                              scrollDirection: Axis.vertical,
                              shrinkWrap: true,
                              itemCount: state.cart.products.length,
                              itemBuilder: (context, index) => Column(
                                children: [
                                  ProductCartWidget(
                                    product: state.cart.products[index],
                                  ),
                                  SizedBox(
                                    height: 26.h,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 40.h,
                            ),
                            const CartInfo(),
                            SizedBox(
                              height: 120.h,
                            ),
                          ],
                        ),
                      ),
                      ButtonUnderNavBar(
                        button: GestureDetector(
                          onTap: () async {
                            await modalBottomSheet(
                                context, const PhoneInputPage());
                            context.router.navigate(
                              OrderingRoute(
                                products: state.cart.products,
                                totalPrice: state.totalPrice,
                                amount: state.cart.getAmountOfEach(),
                              ),
                            );
                          },
                          child: const MainGreenButton(
                            label: AppStrings.deal,
                          ),
                        ),
                      ),
                    ],
                  )
                : const EmptyScreen(
                    label: AppStrings.cartIsEmpty,
                  );
          }
          return const SizedBox.shrink();
        },
      ),
    );
  }
}
