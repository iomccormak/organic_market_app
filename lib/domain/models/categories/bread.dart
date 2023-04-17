import 'package:organic_market_app/domain/models/product_category.dart';
import 'package:organic_market_app/utils/app_icons.dart';
import 'package:organic_market_app/utils/app_images.dart';

class Bread extends ProductCategory {
  final String title = 'Хлеб, выпечка';
  final String icon = AppImages.catBread;
  final String background = AppIcons.figBread;
  final int leftPadding = 22;
  final int topPadding = 16;

  Bread();
}
