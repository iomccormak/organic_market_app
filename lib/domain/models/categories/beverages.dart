import 'package:organic_market_app/domain/models/main_category.dart';
import 'package:organic_market_app/utils/app_icons.dart';
import 'package:organic_market_app/utils/app_images.dart';

class Beverages extends MainCategory {
  @override
  final String title = 'Напитки';
  @override
  final String icon = AppImages.catBev;
  @override
  final String background = AppIcons.figBev;
  @override
  final int leftPadding = 22;
  @override
  final int topPadding = 16;

  Beverages();
}
