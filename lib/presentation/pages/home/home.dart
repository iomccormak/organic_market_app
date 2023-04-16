import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:organic_market_app/presentation/common_widgets/bottom_bar/main_bottom_bar_widget.dart';
import 'package:organic_market_app/presentation/common_widgets/title_text.dart';
import 'package:organic_market_app/presentation/pages/home/widgets/advertisment.dart';
import 'package:organic_market_app/presentation/pages/home/widgets/home_app_bar.dart';
import 'package:organic_market_app/presentation/pages/home/widgets/best_offers.dart';
import 'package:organic_market_app/presentation/pages/home/widgets/bought_before.dart';
import 'package:organic_market_app/presentation/pages/home/widgets/brands.dart';
import 'package:organic_market_app/presentation/pages/home/widgets/green_buttons.dart';
import 'package:organic_market_app/presentation/pages/home/widgets/low_text.dart';
import 'package:organic_market_app/utils/app_strings.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(45.h),
        child: const HomeAppBar(),
      ),
      bottomNavigationBar: const MainBottomBarWidget(),
      body: SingleChildScrollView(
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
              height: 18.h,
            ),

            ///
            SizedBox(
              height: 36.h,
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
            )
          ],
        ),
      ),
    );
  }
}
