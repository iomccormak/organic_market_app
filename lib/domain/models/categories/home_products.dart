import 'package:organic_market_app/domain/models/main_category.dart';
import 'package:organic_market_app/utils/app_icons.dart';
import 'package:organic_market_app/utils/app_images.dart';

class HomeProducts extends MainCategory {
  final String title = 'Товары для дома';
  final String icon = AppImages.catHome;
  final String background = AppIcons.figHome;
  final int leftPadding = 22;
  final int topPadding = 16;

  HomeProducts();
}
