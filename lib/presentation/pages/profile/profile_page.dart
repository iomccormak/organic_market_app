import 'package:flutter/material.dart';
import 'package:organic_market_app/utils/app_text_styles.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Профиль',
          style: AppTextStyles.titleTextStyle,
        ),
      ),
    );
  }
}
