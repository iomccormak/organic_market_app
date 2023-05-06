import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:organic_market_app/presentation/common_widgets/product_widget.dart';
import 'package:organic_market_app/data/repository/mock_repository.dart';
import 'package:organic_market_app/presentation/pages/catalog/cubit/shop_cubit.dart';

class BoughtBefore extends StatelessWidget {
  const BoughtBefore({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ShopCubit, ShopState>(
      builder: (context, state) {
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
              itemCount: state.products!.length,
              itemBuilder: (context, index) => Row(
                children: [
                  ProductWidget(
                    product: state.products![index],
                  ),
                  SizedBox(
                    width: 8.w,
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
