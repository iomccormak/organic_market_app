import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:organic_market_app/presentation/common_widgets/product_widget.dart';
import 'package:organic_market_app/data/repository/temp_repository.dart';

class BoughtBefore extends StatelessWidget {
  const BoughtBefore({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 10.w,
      ),
      child: SizedBox(
        height: 250.h,
        child: ListView.builder(
          physics: const ClampingScrollPhysics(),
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: TempRepository.products.length,
          itemBuilder: (context, index) => Row(
            children: [
              ProductWidget(
                product: TempRepository.products[index],
              ),
              SizedBox(
                width: 8.w,
              )
            ],
          ),
        ),
      ),
    );
  }
}
