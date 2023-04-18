import 'package:organic_market_app/domain/models/main_category.dart';
import 'package:organic_market_app/utils/app_icons.dart';
import 'package:organic_market_app/utils/app_images.dart';

class MilkProducts extends MainCategory {
  final String title = 'Молочные продукты, яйцо';
  final String icon = AppImages.catMilk;
  final String background = AppIcons.figMilk;
  final int leftPadding = 22;
  final int topPadding = 16;

  MilkProducts();
}
