import 'package:organic_market_app/domain/models/main_category.dart';
import 'package:organic_market_app/utils/app_icons.dart';
import 'package:organic_market_app/utils/app_images.dart';

class Fish extends MainCategory {
  final String title = 'Рыба, икра, краб';
  final String icon = AppImages.catFish;
  final String background = AppIcons.figFish;
  final int leftPadding = 22;
  final int topPadding = 16;

  Fish();
}
