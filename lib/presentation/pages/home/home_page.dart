// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:organic_market_app/data/repository/temp_repository.dart';
import 'package:organic_market_app/presentation/common_widgets/bottom_nav_bar/nav_bar_shadow.dart';
import 'package:organic_market_app/presentation/common_widgets/title_text.dart';
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
    return Stack(
      children: [
        SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              SizedBox(
                height: 58.h,
              ),
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
              const BestOffers(),
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
              const BoughtBefore(),
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
    );
  }
}
