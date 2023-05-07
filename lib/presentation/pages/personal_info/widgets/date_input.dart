import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:organic_market_app/utils/app_constants/app_colors.dart';
import 'package:organic_market_app/utils/app_constants/app_icons.dart';
import 'package:organic_market_app/utils/app_constants/app_text_styles.dart';
import 'package:intl/intl.dart';

class DateInput extends StatefulWidget {
  const DateInput({
    super.key,
    required this.fieldName,
    required this.controller,
  });

  final String fieldName;
  final TextEditingController controller;

  @override
  State<DateInput> createState() => _DateInputState();
}

class _DateInputState extends State<DateInput> {
  DateTime date = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 343.w,
      height: 80.h,
      color: AppColors.white,
      child: Stack(
        children: [
          GestureDetector(
            onTap: () async {
              DateTime? newDate = await showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(1900),
                lastDate: DateTime(2050),
              );
              if (newDate == null) return;
              setState(() {
                date = newDate;
              });
            },
            child: Container(
              width: 343.w,
              height: 60.h,
              color: AppColors.toggleBackground,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 13.w,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.fieldName,
                  style: AppTextStyles.bottomBarTextStyle,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 6.h,
                  ),
                  child: Text(
                    DateFormat('dd.MM.yyyy').format(date),
                    style: AppTextStyles.inputTextStyle,
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 22.h,
              left: 310.w,
            ),
            child: SvgPicture.asset(AppIcons.calendar),
          )
        ],
      ),
    );
  }
}
