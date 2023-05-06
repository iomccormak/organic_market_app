import 'package:flutter/material.dart';
import 'package:organic_market_app/utils/app_text_styles.dart';

class ProfileMainInfo extends StatelessWidget {
  const ProfileMainInfo({super.key, required this.name, required this.phone});

  final String name;
  final String phone;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          name.isNotEmpty ? name : 'Заполните личные данные',
          style: AppTextStyles.titleTextStyle.copyWith(
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          phone.isNotEmpty ? '+7' + phone : '',
          style: AppTextStyles.phoneTextStyle,
        ),
      ],
    );
  }
}
