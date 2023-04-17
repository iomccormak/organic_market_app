import 'package:organic_market_app/domain/models/product_category.dart';
import 'package:organic_market_app/utils/app_icons.dart';
import 'package:organic_market_app/utils/app_images.dart';

class Vegetables extends ProductCategory {
  final String title = 'Овощи, фрукты, зелень';
  final String icon = AppImages.catVeg;
  final String background = AppIcons.figVeg;
  final int leftPadding = 22;
  final int topPadding = 16;

  Vegetables();
}
