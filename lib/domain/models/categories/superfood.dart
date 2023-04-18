import 'package:organic_market_app/domain/models/main_category.dart';
import 'package:organic_market_app/utils/app_icons.dart';
import 'package:organic_market_app/utils/app_images.dart';

class Superfood extends MainCategory {
  final String title = 'Суперфуды';
  final String icon = AppImages.catSuper;
  final String background = AppIcons.figSuper;
  final int leftPadding = 22;
  final int topPadding = 16;

  Superfood();
}
