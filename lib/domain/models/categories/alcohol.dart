import 'package:organic_market_app/domain/models/categories/main_category.dart';
import 'package:organic_market_app/utils/app_constants/app_icons.dart';
import 'package:organic_market_app/utils/app_constants/app_images.dart';

class Alcohol extends MainCategory {
  final String title = 'Алкоголь';
  final String icon = AppImages.catAlco;
  final String background = AppIcons.figAlco;
  final int leftPadding = 22;
  final int topPadding = 16;

  Alcohol();
}
