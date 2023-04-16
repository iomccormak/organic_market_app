import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:organic_market_app/presentation/common_widgets/bottom_bar/main_bottom_bar_widget.dart';
import 'package:organic_market_app/presentation/common_widgets/title_text.dart';
import 'package:organic_market_app/presentation/pages/catalog/widgets/catalog_button.dart';
import 'package:organic_market_app/presentation/pages/home/widgets/home_app_bar.dart';
import 'package:organic_market_app/utils/app_icons.dart';
import 'package:organic_market_app/utils/app_strings.dart';

class Catalog extends StatelessWidget {
  const Catalog({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(45.h),
        child: const HomeAppBar(),
      ),
      bottomNavigationBar: const MainBottomBarWidget(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 16.w,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 17.h,
              ),
              Row(
                children: [
                  const CatalogButton(
                    icon: AppIcons.bluePercent,
                    title: AppStrings.discounts,
                    width: 167.5,
                  ),
                  SizedBox(
                    width: 8.w,
                  ),
                  const CatalogButton(
                    icon: AppIcons.redLike,
                    title: AppStrings.likes,
                    width: 167.5,
                  ),
                ],
              ),
              SizedBox(
                height: 8.h,
              ),
              const CatalogButton(
                icon: AppIcons.greenCart,
                title: AppStrings.boughtBefore,
                width: 343,
              ),
              SizedBox(
                height: 32.h,
              ),
              const TitleText(
                title: AppStrings.categories,
                leftPadding: 0,
              ),
              SizedBox(
                height: 16.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
