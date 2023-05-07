import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:organic_market_app/utils/app_constants/app_colors.dart';
import 'package:organic_market_app/utils/app_constants/app_strings.dart';
import 'package:organic_market_app/utils/app_constants/app_text_styles.dart';

class PhoneInput extends StatelessWidget {
  const PhoneInput({
    super.key,
    required this.fieldName,
    required this.controller,
    required this.validator,
  });

  final String fieldName;
  final TextEditingController controller;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 343.w,
      height: 80.h,
      color: AppColors.white,
      child: Stack(
        children: [
          Container(
            width: 343.w,
            height: 60.h,
            color: AppColors.toggleBackground,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 13.w,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  fieldName,
                  style: AppTextStyles.bottomBarTextStyle,
                ),
                TextFormField(
                  controller: controller,
                  keyboardType: TextInputType.number,
                  maxLength: 10,
                  cursorWidth: 1,
                  cursorColor: AppColors.black,
                  textAlign: TextAlign.left,
                  style: AppTextStyles.inputTextStyle,
                  decoration: const InputDecoration(
                    prefixText: AppStrings.plusSeven,
                    isDense: true,
                    border: InputBorder.none,
                    counterText: '',
                    errorStyle: TextStyle(
                      fontSize: 12,
                      height: 1.04,
                    ),
                  ),
                  validator: validator,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
