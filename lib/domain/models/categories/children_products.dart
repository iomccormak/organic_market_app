import 'package:organic_market_app/domain/models/product_category.dart';
import 'package:organic_market_app/utils/app_icons.dart';
import 'package:organic_market_app/utils/app_images.dart';

class ChildrenProducts extends ProductCategory {
  final String title = 'Детям';
  final String icon = AppImages.catChild;
  final String background = AppIcons.figChild;
  final int leftPadding = 22;
  final int topPadding = 16;

  ChildrenProducts();
}
