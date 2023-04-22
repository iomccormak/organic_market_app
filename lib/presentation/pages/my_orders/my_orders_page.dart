import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:organic_market_app/data/repository/temp_repository.dart';
import 'package:organic_market_app/presentation/pages/my_orders/widgets/order_small_widget.dart';

class MyOrdersPage extends StatelessWidget {
  const MyOrdersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
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
                itemCount: TempRepository.orders.length,
                itemBuilder: (context, index) => Column(
                  children: [
                    OrderSmallWidget(
                      order: TempRepository.orders[index],
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
    );
  }
}
