import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:organic_market_app/presentation/pages/home/modal_bottom_sheets/about_company.dart';
import 'package:organic_market_app/presentation/pages/home/modal_bottom_sheets/about_organic.dart';
import 'package:organic_market_app/utils/app_colors.dart';
import 'package:organic_market_app/utils/app_strings.dart';
import 'package:organic_market_app/utils/app_text_styles.dart';

class GreenButtons extends StatelessWidget {
  const GreenButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 9.5.w,
        right: 9.5.w,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
            child: _greenButton(AppStrings.aboutCompany),
            onTap: () {
              _showModalBottomSheet(context, const AboutCompany());
            },
          ),
          SizedBox(
            width: 16.w,
          ),
          GestureDetector(
            child: _greenButton(AppStrings.aboutOrganic),
            onTap: () {
              _showModalBottomSheet(context, const AboutOrganic());
            },
          ),
        ],
      ),
    );
  }

  Future<dynamic> _showModalBottomSheet(BuildContext context, Widget widget) {
    return showModalBottomSheet(
      useRootNavigator: true,
      isScrollControlled: true,
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(10),
        ),
      ),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      builder: (context) {
        return SizedBox(
          height: 441.h,
          child: widget,
        );
      },
    );
  }

  Container _greenButton(String text) {
    return Container(
      width: 167.w,
      height: 58.h,
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(43),
        ),
        color: AppColors.mainGreen,
      ),
      child: Text(
        text,
        style: AppTextStyles.greenButtonTextStyle,
      ),
    );
  }
}
