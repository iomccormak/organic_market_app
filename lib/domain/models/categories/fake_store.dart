import 'package:organic_market_app/domain/models/categories/main_category.dart';
import 'package:organic_market_app/utils/app_constants/app_icons.dart';
import 'package:organic_market_app/utils/app_constants/app_images.dart';

class FakeStore extends MainCategory {
  final String title = 'Fake Store Products';
  final String icon = AppImages.catGroc;
  final String background = AppIcons.figFreezed;
  final int leftPadding = 22;
  final int topPadding = 16;

  FakeStore();
}
