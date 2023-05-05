import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:organic_market_app/utils/app_colors.dart';
import 'package:organic_market_app/utils/app_icons.dart';
import 'package:organic_market_app/utils/app_strings.dart';
import 'package:organic_market_app/utils/app_text_styles.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key, required this.tabsRouter});

  final TabsRouter tabsRouter;

  @override
  Widget build(BuildContext context) {
    String text = '';
    bool backButton = false;
    bool likeAndShareButtons = false;
    bool deleteButton = false;

    switch (tabsRouter.currentPath) {
      case ('/home'):
        text = AppStrings.adress;
        backButton = false;
        likeAndShareButtons = false;
        deleteButton = false;
        break;
      case ('/catalog'):
        text = AppStrings.catalog;
        backButton = false;
        likeAndShareButtons = false;
        deleteButton = false;
        break;
      case ('/search'):
        text = AppStrings.search;
        backButton = false;
        likeAndShareButtons = false;
        deleteButton = false;
        break;
      case ('/cart'):
        text = AppStrings.cart;
        backButton = false;
        likeAndShareButtons = false;
        deleteButton = false;
        break;
      case ('/profile'):
        text = AppStrings.profile;
        backButton = false;
        likeAndShareButtons = false;
        deleteButton = false;
        break;
      case ('/home/:product'):
        text = AppStrings.item;
        backButton = true;
        likeAndShareButtons = true;
        deleteButton = false;
        break;
      case ('/profile/:personalInfo'):
        text = AppStrings.personalInfo;
        backButton = true;
        likeAndShareButtons = false;
        deleteButton = false;
        break;
      case ('/profile/:myOrders'):
        text = AppStrings.myOrders;
        backButton = true;
        likeAndShareButtons = false;
        deleteButton = false;
        break;
      case ('/profile/:order'):
        text = AppStrings.myOrders;
        backButton = true;
        likeAndShareButtons = false;
        deleteButton = false;
        break;
      case ('/catalog/category'):
        text = 'Категория';
        backButton = true;
        likeAndShareButtons = false;
        deleteButton = false;
        break;
      case ('/catalog/:product'):
        text = AppStrings.item;
        backButton = true;
        likeAndShareButtons = true;
        deleteButton = false;
        break;
      default:
        break;
    }

    return Container(
      height: 100.h,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(12.r),
          bottomRight: Radius.circular(12.r),
        ),
        boxShadow: const [
          BoxShadow(
            color: AppColors.shadowColor,
            blurRadius: 15,
            spreadRadius: 7,
          ),
        ],
      ),
      child: Container(
        margin: EdgeInsets.only(
          left: 26.w,
          right: 26.w,
          top: 22.w,
        ),
        child: Stack(
          children: [
            Center(
              child: Text(
                text,
                style: AppTextStyles.appBarTextStyle.copyWith(
                  fontSize: 16.sp,
                ),
              ),
            ),
            backButton
                ? GestureDetector(
                    onTap: () {
                      context.router.navigateNamed('search');
                      print('check');
                    },
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: SvgPicture.asset(AppIcons.back),
                    ),
                  )
                : const SizedBox.shrink(),
            likeAndShareButtons
                ? Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SvgPicture.asset(AppIcons.like),
                        SizedBox(
                          width: 17.w,
                        ),
                        SvgPicture.asset(AppIcons.share),
                      ],
                    ),
                  )
                : const SizedBox.shrink(),
            deleteButton
                ? GestureDetector(
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: SvgPicture.asset(AppIcons.litter),
                    ),
                  )
                : const SizedBox.shrink(),
          ],
        ),
      ),
    );
  }
}
