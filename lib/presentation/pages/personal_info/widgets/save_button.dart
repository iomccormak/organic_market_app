import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:organic_market_app/utils/app_colors.dart';
import 'package:organic_market_app/utils/app_text_styles.dart';

class SaveButton extends StatelessWidget {
  const SaveButton({super.key, required this.formKey});

  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 666.h),
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
        child: GestureDetector(
          onTap: () {
            if (formKey.currentState!.validate()) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Processing Data')),
              );
            }
          },
          child: Container(
            width: 343.w,
            height: 58.h,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(43)),
              boxShadow: [
                BoxShadow(
                  color: AppColors.shadowColor,
                  blurRadius: 8,
                  spreadRadius: 1,
                ),
              ],
              color: AppColors.mainGreen,
            ),
            alignment: Alignment.center,
            child: Text(
              'Сохранить',
              style: AppTextStyles.greenButtonTextStyle,
            ),
          ),
        ),
      ),
    );
  }
}
