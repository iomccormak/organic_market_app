import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:organic_market_app/presentation/common_widgets/modal_bottom_sheet.dart';
import 'package:organic_market_app/presentation/pages/cart/modal_bottom_sheets/phone_input_page.dart';
import 'package:organic_market_app/utils/app_colors.dart';
import 'package:organic_market_app/utils/app_strings.dart';
import 'package:organic_market_app/utils/app_text_styles.dart';

class ButtonUnderNavBar extends StatelessWidget {
  const ButtonUnderNavBar({
    super.key,
    required this.button,
  });

  final Widget button;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 610.h),
      child: Container(
        height: 93.h,
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
        alignment: Alignment.center,
        child: button,
      ),
    );
  }
}
