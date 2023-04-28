import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import 'package:organic_market_app/domain/api.dart';
import 'package:organic_market_app/presentation/common_widgets/all_products.dart';
import 'package:organic_market_app/presentation/common_widgets/product_widget.dart';
import 'package:organic_market_app/data/repository/temp_repository.dart';

class Recommendations extends StatelessWidget {
  const Recommendations({super.key});

  ApiService get service => GetIt.I<ApiService>();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: service.getAllProducts(),
      builder: (_, snapshot) {
        if (!snapshot.hasData) {
          return const CircularProgressIndicator();
        }
        final products = snapshot.data!;
        return AllProducts(
          products: products,
        );
      },
    );
  }
}
