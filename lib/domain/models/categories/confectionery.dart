import 'package:organic_market_app/domain/models/main_category.dart';
import 'package:organic_market_app/utils/app_icons.dart';
import 'package:organic_market_app/utils/app_images.dart';

class Confectionery extends MainCategory {
  final String title = 'Кондитерские изделия';
  final String icon = AppImages.catCon;
  final String background = AppIcons.figCon;
  final int leftPadding = 22;
  final int topPadding = 16;

  Confectionery();
}
