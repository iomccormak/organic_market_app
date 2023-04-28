import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import 'package:organic_market_app/domain/api.dart';
import 'package:organic_market_app/domain/models/product.dart';
import 'package:organic_market_app/presentation/common_widgets/product_widget.dart';

class AllProducts extends StatelessWidget {
  const AllProducts({
    super.key,
    required this.products,
  });

  final List<Product> products;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 10.w,
      ),
      child: SizedBox(
        height: 250.h,
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: products.length,
          itemBuilder: (context, index) => Row(
            children: [
              ProductWidget(
                product: products[index],
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
