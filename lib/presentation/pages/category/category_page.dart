import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:organic_market_app/domain/api.dart';
import 'package:organic_market_app/presentation/common_widgets/bottom_nav_bar/nav_bar_shadow.dart';
import 'package:organic_market_app/presentation/common_widgets/loading_animation.dart';
import 'package:organic_market_app/presentation/common_widgets/product_widget.dart';
import 'package:organic_market_app/utils/app_colors.dart';
import 'package:organic_market_app/utils/app_text_styles.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  ApiService get service => GetIt.I<ApiService>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: service.getAllProducts(),
        builder: (_, snapshot) {
          if (!snapshot.hasData) {
            return LoadingAnimation();
          }
          final products = snapshot.data!;
          return Stack(
            children: [
              SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 100.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '${products.length} товаров',
                            style: AppTextStyles.bottomBarTextStyle.copyWith(
                              fontSize: 14.sp,
                            ),
                          ),
                          GestureDetector(
                            child: Text(
                              'Сортировать по возрастанию',
                              style: AppTextStyles.bottomBarTextStyle.copyWith(
                                color: AppColors.black,
                              ),
                            ),
                          )
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
                          itemCount: products.length,
                          itemBuilder: (context, index) {
                            return ProductWidget(
                              product: products[index],
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              NavBarShadow(),
            ],
          );
        },
      ),
    );
  }
}
