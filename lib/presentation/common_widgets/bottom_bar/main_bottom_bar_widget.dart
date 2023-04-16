import 'package:flutter/material.dart';
import 'package:organic_market_app/presentation/common_widgets/bottom_bar/bottom_bar_widget.dart';
import 'package:organic_market_app/utils/app_colors.dart';

class MainBottomBarWidget extends StatelessWidget {
  const MainBottomBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(12),
          topRight: Radius.circular(12),
        ),
        boxShadow: [
          BoxShadow(
            color: AppColors.shadowColor,
            blurRadius: 15,
            spreadRadius: 7,
          ),
        ],
        color: AppColors.white,
      ),
      child: const BottomBarWidget(),
    );
  }
}
