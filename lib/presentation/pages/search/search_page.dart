import 'package:flutter/material.dart';
import 'package:organic_market_app/presentation/pages/personal_info/personal_info_page.dart';
import 'package:organic_market_app/utils/app_text_styles.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PersonalInfoPage();
    /*return Scaffold(
      body: Center(
        child: Text(
          'Поиск',
          style: AppTextStyles.titleTextStyle,
        ),
      ),
    );*/
  }
}
