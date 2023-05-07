import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:organic_market_app/presentation/common_widgets/bottom_nav_bar/nav_bar_shadow.dart';
import 'package:organic_market_app/presentation/common_widgets/custom_app_bar.dart';
import 'package:organic_market_app/presentation/common_widgets/loading_animation.dart';
import 'package:organic_market_app/presentation/pages/my_orders/bloc/my_orders_bloc.dart';
import 'package:organic_market_app/presentation/pages/my_orders/widgets/order_small_widget.dart';
import 'package:organic_market_app/utils/app_strings.dart';

class MyOrdersPage extends StatelessWidget {
  const MyOrdersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(44.h),
        child: const CustomAppBar(
          label: AppStrings.myOrders,
          back: true,
        ),
      ),
      body: BlocBuilder<MyOrdersBloc, MyOrdersState>(
        builder: (context, state) {
          if (state is MyOrdersInitial) {
            return const CircularProgressIndicator();
          } else if (state is MyOrdersLoad) {
            return Stack(
              children: [
                SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 26.h,
                      ),
                      SizedBox(
                        height: 600.h,
                        child: ListView.builder(
                          physics: const BouncingScrollPhysics(),
                          scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                          itemCount: state.orders.orders.length,
                          itemBuilder: (context, index) => Column(
                            children: [
                              OrderSmallWidget(
                                order: state.orders.orders[index],
                              ),
                              SizedBox(
                                height: 26.h,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const NavBarShadow(),
              ],
            );
          }
          return const LoadingAnimation();
        },
      ),
    );
  }
}
