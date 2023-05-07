import 'package:organic_market_app/domain/models/categories/main_category.dart';
import 'package:organic_market_app/utils/app_constants/app_icons.dart';
import 'package:organic_market_app/utils/app_constants/app_images.dart';

class Meat extends MainCategory {
  final String title = 'Мясо, птица';
  final String icon = AppImages.catMeat;
  final String background = AppIcons.figMeat;
  final int leftPadding = 22;
  final int topPadding = 16;

  Meat();
}
