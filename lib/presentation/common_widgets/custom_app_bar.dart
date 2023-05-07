import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:organic_market_app/utils/app_colors.dart';
import 'package:organic_market_app/utils/app_icons.dart';
import 'package:organic_market_app/utils/app_text_styles.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.label,
    this.back = false,
    this.likeAndShare = false,
    this.delete = false,
  });

  final String label;
  final bool back;
  final bool likeAndShare;
  final bool delete;

  @override
  Widget build(BuildContext context) {
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
                label,
                style: AppTextStyles.appBarTextStyle.copyWith(
                  fontSize: 16.sp,
                ),
              ),
            ),
            back
                ? GestureDetector(
                    onTap: () {
                      context.router.pop();
                    },
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: SvgPicture.asset(AppIcons.back),
                    ),
                  )
                : const SizedBox.shrink(),
            likeAndShare
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
            delete
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
