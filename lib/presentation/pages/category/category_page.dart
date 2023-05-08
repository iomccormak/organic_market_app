import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:organic_market_app/presentation/common_widgets/custom_app_bar.dart';
import 'package:organic_market_app/presentation/common_widgets/bottom_nav_bar/nav_bar_shadow.dart';
import 'package:organic_market_app/presentation/common_widgets/cards/product_card.dart';
import 'package:organic_market_app/presentation/pages/catalog/bloc/catalog_bloc.dart';
import 'package:organic_market_app/utils/app_constants/app_strings.dart';
import 'package:organic_market_app/utils/app_constants/app_text_styles.dart';
import 'package:organic_market_app/utils/formatters/text_formatter.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(44.h),
        child: const CustomAppBar(
          label: AppStrings.categories,
          back: true,
        ),
      ),
      body: BlocBuilder<CatalogBloc, CatalogState>(
        builder: (context, state) {
          return Stack(
            children: [
              SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 20.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            state.products!.length.toString().changeCase(),
                            style: AppTextStyles.bottomBarTextStyle.copyWith(
                              fontSize: 14.sp,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      SizedBox(
                        height: 620.h,
                        child: GridView.builder(
                          physics: const BouncingScrollPhysics(),
                          padding: EdgeInsets.only(
                            bottom: 10.h,
                          ),
                          gridDelegate:
                              SliverGridDelegateWithMaxCrossAxisExtent(
                            maxCrossAxisExtent: 240.w,
                            mainAxisExtent: 250.h,
                            mainAxisSpacing: 20.h,
                            crossAxisSpacing: 10.w,
                          ),
                          itemCount: state.products!.length,
                          itemBuilder: (context, index) {
                            return ProductCard(
                              product: state.products![index],
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const NavBarShadow(),
            ],
          );
        },
      ),
    );
  }
}
