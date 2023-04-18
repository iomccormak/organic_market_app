import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:organic_market_app/utils/app_colors.dart';
import 'package:organic_market_app/utils/app_icons.dart';
import 'package:organic_market_app/utils/app_text_styles.dart';

class ProfileTextButton extends StatelessWidget {
  const ProfileTextButton({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: AppTextStyles.bottomSheetTextStyle.copyWith(
            color: AppColors.black,
          ),
        ),
        SvgPicture.asset(AppIcons.backToRight),
      ],
    );
  }
}
