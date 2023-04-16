import 'package:flutter/material.dart';
import 'package:organic_market_app/utils/app_text_styles.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Поиск',
          style: AppTextStyles.titleTextStyle,
        ),
      ),
    );
  }
}
