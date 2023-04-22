import 'package:flutter/material.dart';
import 'package:organic_market_app/presentation/pages/my_orders/my_orders_page.dart';
import 'package:organic_market_app/presentation/pages/personal_info/personal_info_page.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MyOrdersPage();
    //return PersonalInfoPage();
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
