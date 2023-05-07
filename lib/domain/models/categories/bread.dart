import 'package:organic_market_app/domain/models/categories/main_category.dart';
import 'package:organic_market_app/utils/app_constants/app_icons.dart';
import 'package:organic_market_app/utils/app_constants/app_images.dart';

class Bread extends MainCategory {
  final String title = 'Хлеб, выпечка';
  final String icon = AppImages.catBread;
  final String background = AppIcons.figBread;
  final int leftPadding = 22;
  final int topPadding = 16;

  Bread();
}
