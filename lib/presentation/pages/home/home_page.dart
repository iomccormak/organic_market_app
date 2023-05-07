import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:organic_market_app/data/repository/mock_repository.dart';
import 'package:organic_market_app/presentation/common_widgets/custom_app_bar.dart';
import 'package:organic_market_app/presentation/common_widgets/bottom_nav_bar/nav_bar_shadow.dart';
import 'package:organic_market_app/presentation/common_widgets/title_text.dart';
import 'package:organic_market_app/presentation/pages/catalog/cubit/catalog_cubit.dart';
import 'package:organic_market_app/presentation/pages/home/widgets/advertisment.dart';
import 'package:organic_market_app/presentation/common_widgets/cards/category_small_card.dart';
import 'package:organic_market_app/presentation/pages/home/widgets/best_offers.dart';
import 'package:organic_market_app/presentation/pages/home/widgets/bought_before.dart';
import 'package:organic_market_app/presentation/pages/home/widgets/brands.dart';
import 'package:organic_market_app/presentation/pages/home/widgets/green_buttons.dart';
import 'package:organic_market_app/presentation/pages/home/widgets/low_text.dart';
import 'package:organic_market_app/utils/app_constants/app_strings.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CatalogCubit, CatalogState>(
      builder: (context, state) {
        return Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(44.h),
            child: const CustomAppBar(
              label: AppStrings.adress,
            ),
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
                          itemCount: MockRepository.categories.length,
                          itemBuilder: (context, index) {
                            return Row(
                              children: [
                                SizedBox(
                                  width: 8.w,
                                ),
                                CategorySmallCard(
                                  category: MockRepository.categories[index],
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
                    BestOffers(
                      state: state,
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
                    BoughtBefore(
                      state: state,
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
