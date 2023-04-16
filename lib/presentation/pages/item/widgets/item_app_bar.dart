import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:organic_market_app/utils/app_colors.dart';
import 'package:organic_market_app/utils/app_icons.dart';
import 'package:organic_market_app/utils/app_text_styles.dart';

class ItemBar extends StatelessWidget {
  const ItemBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      shadowColor: AppColors.shadowColor,
      elevation: 15,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(12),
          bottomRight: Radius.circular(12),
        ),
      ),
      backgroundColor: AppColors.white,
      centerTitle: true,
      actions: [
        SvgPicture.asset(AppIcons.share),
        SizedBox(
          width: 17.w,
        ),
        Padding(
          padding: EdgeInsets.only(
            right: 14.w,
          ),
          child: SvgPicture.asset(AppIcons.like),
        ),
      ],
      title: Text(
        'Говядина',
        style: AppTextStyles.appBarTextStyle,
      ),
      leading: Padding(
        padding: EdgeInsets.only(
          left: 14.w,
        ),
        child: Transform.scale(
          scale: 0.4,
          child: SvgPicture.asset(AppIcons.back),
        ),
      ),
    );
  }
}
