import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import 'package:organic_market_app/domain/api.dart';
import 'package:organic_market_app/domain/models/shop_service.dart';
import 'package:organic_market_app/presentation/common_widgets/all_products.dart';
import 'package:organic_market_app/presentation/common_widgets/loading_animation.dart';
import 'package:organic_market_app/presentation/common_widgets/product_widget.dart';
import 'package:organic_market_app/data/repository/temp_repository.dart';
import 'package:organic_market_app/presentation/pages/catalog/cubit/shop_cubit.dart';

class Recommendations extends StatelessWidget {
  const Recommendations({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ShopCubit, ShopState>(
      builder: (context, state) {
        return AllProducts(products: state.products!);
      },
    );
  }
}
