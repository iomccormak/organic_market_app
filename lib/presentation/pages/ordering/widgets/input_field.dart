import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:organic_market_app/utils/app_colors.dart';
import 'package:organic_market_app/utils/app_icons.dart';
import 'package:organic_market_app/utils/app_text_styles.dart';

class InputField extends StatelessWidget {
  const InputField({
    super.key,
    required this.title,
    required this.text,
  });

  final String title;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 343.w,
      height: 60.h,
      color: AppColors.toggleBackground,
      padding: EdgeInsets.symmetric(
        horizontal: 12.w,
        vertical: 9.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                title,
                style: AppTextStyles.appBarTextStyle,
              ),
              Text(
                text,
                style: AppTextStyles.bottomBarTextStyle,
              ),
            ],
          ),
          SvgPicture.asset(AppIcons.backToRight),
        ],
      ),
    );
  }
}
