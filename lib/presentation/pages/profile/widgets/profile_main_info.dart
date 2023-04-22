import 'package:flutter/material.dart';
import 'package:organic_market_app/utils/app_text_styles.dart';

class ProfileMainInfo extends StatelessWidget {
  const ProfileMainInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Сергей',
          style: AppTextStyles.titleTextStyle.copyWith(
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          '+7 123 456 78 90',
          style: AppTextStyles.phoneTextStyle,
        ),
      ],
    );
  }
}
