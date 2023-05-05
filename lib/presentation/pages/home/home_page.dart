import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:organic_market_app/data/repository/temp_repository.dart';
import 'package:organic_market_app/domain/api.dart';
import 'package:organic_market_app/domain/models/product.dart';
import 'package:organic_market_app/presentation/common_widgets/all_products.dart';
import 'package:organic_market_app/presentation/common_widgets/bottom_nav_bar/nav_bar_shadow.dart';
import 'package:organic_market_app/presentation/common_widgets/loading_animation.dart';
import 'package:organic_market_app/presentation/common_widgets/product_widget.dart';
import 'package:organic_market_app/presentation/common_widgets/title_text.dart';
import 'package:organic_market_app/presentation/pages/cart/widgets/empty_screen.dart';
import 'package:organic_market_app/presentation/pages/catalog/cubit/shop_cubit.dart';
import 'package:organic_market_app/presentation/pages/home/widgets/advertisment.dart';
import 'package:organic_market_app/presentation/pages/home/widgets/category_small_widget.dart';
import 'package:organic_market_app/presentation/pages/home/widgets/best_offers.dart';
import 'package:organic_market_app/presentation/pages/home/widgets/bought_before.dart';
import 'package:organic_market_app/presentation/pages/home/widgets/brands.dart';
import 'package:organic_market_app/presentation/pages/home/widgets/green_buttons.dart';
import 'package:organic_market_app/presentation/pages/home/widgets/home_app_bar.dart';
import 'package:organic_market_app/presentation/pages/home/widgets/low_text.dart';
import 'package:organic_market_app/utils/app_colors.dart';
import 'package:organic_market_app/utils/app_strings.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ShopCubit, ShopState>(
      builder: (context, state) {
        return Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(44.h),
            child: HomeAppBar(),
          ),
          body: Stack(
            children: [
              SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    SizedBox(
                      height: 28.h,
                    ),
                    const Advertisment(),
                    SizedBox(
                      height: 36.h,
                    ),
                    const TitleText(
                      title: AppStrings.popCategories,
                      leftPadding: 13,
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 5.w,
                      ),
                      child: SizedBox(
                        height: 133.h,
                        child: ListView.builder(
                          physics: const BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemCount: TempRepository.categories.length,
                          itemBuilder: (context, index) {
                            return Row(
                              children: [
                                SizedBox(
                                  width: 8.w,
                                ),
                                CategorySmallWidget(
                                  category: TempRepository.categories[index],
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 26.h,
                    ),
                    const TitleText(
                      title: AppStrings.bestOffers,
                      leftPadding: 13,
                    ),
                    SizedBox(
                      height: 18.h,
                    ),
                    Padding(
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
                                    ProductWidget(
                                      product: state.products![index],
                                    ),
                                    SizedBox(
                                      width: 8.w,
                                    )
                                  ],
                                ),
                              )
                            : LoadingAnimation(),
                      ),
                    ),
                    SizedBox(
                      height: 36.h,
                    ),
                    const TitleText(
                      title: AppStrings.boughtBefore,
                      leftPadding: 13,
                    ),
                    SizedBox(
                      height: 18.h,
                    ),
                    Padding(
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
                                    ProductWidget(
                                      product: state.products![index],
                                    ),
                                    SizedBox(
                                      width: 8.w,
                                    )
                                  ],
                                ),
                              )
                            : LoadingAnimation(),
                      ),
                    ),
                    SizedBox(
                      height: 36.h,
                    ),
                    const TitleText(
                      title: AppStrings.brands,
                      leftPadding: 13,
                    ),
                    SizedBox(
                      height: 18.h,
                    ),
                    const Brands(),
                    SizedBox(
                      height: 36.h,
                    ),
                    const GreenButtons(),
                    SizedBox(
                      height: 20.h,
                    ),
                    const LowText(),
                    SizedBox(
                      height: 42.h,
                    ),
                  ],
                ),
              ),
              const NavBarShadow(),
            ],
          ),
        );
      },
    );
  }
}
