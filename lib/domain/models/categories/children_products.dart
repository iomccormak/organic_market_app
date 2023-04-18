import 'package:organic_market_app/domain/models/main_category.dart';
import 'package:organic_market_app/utils/app_icons.dart';
import 'package:organic_market_app/utils/app_images.dart';

class ChildrenProducts extends MainCategory {
  @override
  final String title = 'Детям';
  @override
  final String icon = AppImages.catChild;
  @override
  final String background = AppIcons.figChild;
  @override
  final int leftPadding = 22;
  @override
  final int topPadding = 16;

  ChildrenProducts();
}
