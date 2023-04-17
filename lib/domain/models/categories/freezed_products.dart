import 'package:organic_market_app/domain/models/product_category.dart';
import 'package:organic_market_app/utils/app_icons.dart';
import 'package:organic_market_app/utils/app_images.dart';

class FreezedProducts extends ProductCategory {
  final String title = 'Замороженные продукты';
  final String icon = AppImages.catFreezed;
  final String background = AppIcons.figFreezed;
  final int leftPadding = 22;
  final int topPadding = 16;

  FreezedProducts();
}
