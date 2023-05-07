import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:organic_market_app/domain/models/product/product.dart';
import 'package:organic_market_app/utils/app_constants/app_colors.dart';
import 'package:toggle_switch/toggle_switch.dart';

class CustomToggleSwitch extends StatefulWidget {
  const CustomToggleSwitch({super.key, required this.product});

  final Product product;

  @override
  State<CustomToggleSwitch> createState() => _CustomToggleSwitchState();
}

class _CustomToggleSwitchState extends State<CustomToggleSwitch> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: AppColors.shadowColor,
            blurRadius: 8,
            spreadRadius: 1,
          ),
        ],
      ),
      child: ToggleSwitch(
        onToggle: (index) {},
        minWidth: 343.w,
        cornerRadius: 20.0,
        activeBgColors: const [
          [AppColors.white],
        ],
        activeFgColor: AppColors.black,
        inactiveBgColor: AppColors.toggleBackground,
        inactiveFgColor: AppColors.black,
        initialLabelIndex: 0,
        totalSwitches: 1,
        labels: const [
          '1 шт. -10%',
        ],
        radiusStyle: true,
      ),
    );
  }
}
