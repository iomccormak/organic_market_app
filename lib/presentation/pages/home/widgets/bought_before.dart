import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:organic_market_app/presentation/common_widgets/cards/product_card.dart';
import 'package:organic_market_app/presentation/common_widgets/loading_animation.dart';
import 'package:organic_market_app/presentation/pages/catalog/bloc/catalog_bloc.dart';

class BoughtBefore extends StatelessWidget {
  const BoughtBefore({
    super.key,
    required this.state,
  });

  final CatalogState state;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 10.w,
      ),
      child: SizedBox(
        height: 250.h,
        child: state.isLoading == false
            ? ListView.builder(
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: state.products!.length,
                itemBuilder: (context, index) => Row(
                  children: [
                    ProductCard(
                      product: state.products![index],
                    ),
                    SizedBox(
                      width: 8.w,
                    )
                  ],
                ),
              )
            : const LoadingAnimation(),
      ),
    );
  }
}
