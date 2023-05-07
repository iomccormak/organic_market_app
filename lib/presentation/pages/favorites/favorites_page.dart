import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:organic_market_app/presentation/common_widgets/custom_app_bar.dart';
import 'package:organic_market_app/presentation/common_widgets/bottom_nav_bar/nav_bar_shadow.dart';
import 'package:organic_market_app/presentation/common_widgets/cards/product_card.dart';
import 'package:organic_market_app/presentation/pages/cart/widgets/empty_screen.dart';
import 'package:organic_market_app/presentation/pages/favorites/bloc/favorites_bloc.dart';
import 'package:organic_market_app/utils/app_constants/app_strings.dart';
import 'package:organic_market_app/utils/app_constants/app_text_styles.dart';
import 'package:organic_market_app/utils/formatters/text_formatter.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(44.h),
        child: const CustomAppBar(
          label: AppStrings.favorites,
          back: true,
        ),
      ),
      body: BlocBuilder<FavoritesBloc, FavoritesState>(
        builder: (context, state) {
          if (state is FavoritesInitial) {
            return const CircularProgressIndicator();
          } else if (state is FavoritesLoad) {
            return state.favoritesModel.products.isNotEmpty
                ? Stack(
                    children: [
                      SingleChildScrollView(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 30.h,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    state.favoritesModel.products.length
                                        .toString()
                                        .changeCase(),
                                    style: AppTextStyles.bottomBarTextStyle
                                        .copyWith(
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
                                  itemCount:
                                      state.favoritesModel.products.length,
                                  itemBuilder: (context, index) {
                                    return ProductCard(
                                      product:
                                          state.favoritesModel.products[index],
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
                  )
                : const EmptyScreen(
                    label: AppStrings.favoritesIsEmpty,
                  );
          }
          return const SizedBox.shrink();
        },
      ),
    );
  }
}
