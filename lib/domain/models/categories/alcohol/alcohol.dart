import 'package:organic_market_app/domain/models/main_category.dart';
import 'package:organic_market_app/utils/app_icons.dart';
import 'package:organic_market_app/utils/app_images.dart';

class Alcohol extends MainCategory {
  @override
  final String title = 'Алкоголь';
  @override
  final String icon = AppImages.catAlco;
  @override
  final String background = AppIcons.figAlco;
  @override
  final int leftPadding = 22;
  @override
  final int topPadding = 16;

  Alcohol();
}
