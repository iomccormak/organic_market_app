import 'package:organic_market_app/domain/models/product_category.dart';
import 'package:organic_market_app/utils/app_icons.dart';
import 'package:organic_market_app/utils/app_images.dart';

class Bio extends ProductCategory {
  final String title = 'Биологически активные добавки';
  final String icon = AppImages.catBio;
  final String background = AppIcons.figBio;
  final int leftPadding = 22;
  final int topPadding = 16;

  Bio();
}
