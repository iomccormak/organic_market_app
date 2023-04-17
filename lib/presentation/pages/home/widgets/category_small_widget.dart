import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:organic_market_app/data/repository/temp_repository.dart';
import 'package:organic_market_app/domain/models/product_category.dart';
import 'package:organic_market_app/utils/app_colors.dart';
import 'package:organic_market_app/utils/app_icons.dart';
import 'package:organic_market_app/utils/app_text_styles.dart';

class CategorySmallWidget extends StatelessWidget {
  const CategorySmallWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 10.w,
      ),
      child: SizedBox(
        height: 120.h,
        child: ListView.builder(
          physics: const ClampingScrollPhysics(),
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: TempRepository.categories.length,
          itemBuilder: (context, index) => Row(
            children: [
              Container(
                width: 104.w,
                height: 104.h,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.shadowColor,
                      blurRadius: 8,
                      spreadRadius: 1,
                    ),
                  ],
                  color: AppColors.white,
                ),
                child: Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: TempRepository.categories[index].leftPadding.w,
                        top: TempRepository.categories[index].topPadding.h,
                      ),
                      child: SvgPicture.asset(
                        TempRepository.categories[index].background,
                      ),
                    ),
                    Image.asset(TempRepository.categories[index].icon),
                    TempRepository.categories[index].title.length > 13
                        ? Padding(
                            padding: EdgeInsets.only(
                              top: 70.h,
                              left: 12.w,
                              right: 12.w,
                            ),
                            child: Text(
                              TempRepository.categories[index].title,
                              textAlign: TextAlign.start,
                              style: AppTextStyles.bottomBarTextStyle.copyWith(
                                color: AppColors.black,
                                fontSize: 12.sp,
                                height: 1,
                              ),
                            ),
                          )
                        : Padding(
                            padding: EdgeInsets.only(
                              top: 80.h,
                              left: 12.w,
                              right: 12.w,
                            ),
                            child: Text(
                              TempRepository.categories[index].title,
                              textAlign: TextAlign.start,
                              style: AppTextStyles.bottomBarTextStyle.copyWith(
                                color: AppColors.black,
                                fontSize: 12.sp,
                                height: 1,
                              ),
                            ),
                          ),
                  ],
                ),
              ),
              SizedBox(
                width: 8.w,
              )
            ],
          ),
        ),
      ),
    );
    /**/
  }
}
