import 'package:organic_market_app/domain/models/main_category.dart';
import 'package:organic_market_app/utils/app_icons.dart';
import 'package:organic_market_app/utils/app_images.dart';

class Bread extends MainCategory {
  @override
  final String title = 'Хлеб, выпечка';
  @override
  final String icon = AppImages.catBread;
  @override
  final String background = AppIcons.figBread;
  @override
  final int leftPadding = 22;
  @override
  final int topPadding = 16;

  Bread();
}
