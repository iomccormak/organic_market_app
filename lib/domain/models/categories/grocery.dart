import 'package:organic_market_app/domain/models/categories/main_category.dart';
import 'package:organic_market_app/utils/app_icons.dart';
import 'package:organic_market_app/utils/app_images.dart';

class Grocery extends MainCategory {
  final String title = 'Бакалея';
  final String icon = AppImages.catGroc;
  final String background = AppIcons.figGroc;
  final int leftPadding = 22;
  final int topPadding = 16;

  Grocery();
}
