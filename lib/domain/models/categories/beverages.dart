import 'package:organic_market_app/domain/models/categories/main_category.dart';
import 'package:organic_market_app/utils/app_constants/app_icons.dart';
import 'package:organic_market_app/utils/app_constants/app_images.dart';

class Beverages extends MainCategory {
  final String title = 'Напитки';
  final String icon = AppImages.catBev;
  final String background = AppIcons.figBev;
  final int leftPadding = 22;
  final int topPadding = 16;

  Beverages();
}
