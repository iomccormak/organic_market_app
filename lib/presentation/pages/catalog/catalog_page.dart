import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:organic_market_app/data/repository/mock_repository.dart';
import 'package:organic_market_app/navigation/auto_router.gr.dart';
import 'package:organic_market_app/presentation/common_widgets/app_bar_widget.dart';
import 'package:organic_market_app/presentation/common_widgets/bottom_nav_bar/nav_bar_shadow.dart';
import 'package:organic_market_app/presentation/common_widgets/title_text.dart';
import 'package:organic_market_app/presentation/pages/catalog/widgets/catalog_app_bar.dart';
import 'package:organic_market_app/presentation/pages/catalog/widgets/catalog_button.dart';
import 'package:organic_market_app/presentation/pages/catalog/widgets/category_big_widget.dart';
import 'package:organic_market_app/utils/app_icons.dart';
import 'package:organic_market_app/utils/app_strings.dart';

class CatalogPage extends StatelessWidget {
  const CatalogPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(44.h),
        child: AppBarWidget(
          label: AppStrings.catalog,
        ),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 16.w,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 15.h,
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
                      GestureDetector(
                        onTap: () => context.router.navigate(FavoritesRoute()),
                        child: const CatalogButton(
                          icon: AppIcons.redLike,
                          title: AppStrings.likes,
                          width: 167.5,
                        ),
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
                  SizedBox(
                    height: 460.h,
                    child: GridView.builder(
                      physics: const BouncingScrollPhysics(),
                      padding: EdgeInsets.only(
                        top: 10.h,
                      ),
                      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 250.w,
                        mainAxisExtent: 100.h,
                        mainAxisSpacing: 20,
                      ),
                      itemCount: MockRepository.categories.length,
                      itemBuilder: (context, index) {
                        return CategoryBigWidget(
                          category: MockRepository.categories[index],
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
      ),
    );
  }
}
