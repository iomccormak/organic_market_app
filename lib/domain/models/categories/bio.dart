import 'package:organic_market_app/domain/models/main_category.dart';
import 'package:organic_market_app/utils/app_icons.dart';
import 'package:organic_market_app/utils/app_images.dart';

class Bio extends MainCategory {
  @override
  final String title = 'Биологически активные добавки';
  @override
  final String icon = AppImages.catBio;
  @override
  final String background = AppIcons.figBio;
  @override
  final int leftPadding = 22;
  @override
  final int topPadding = 16;

  Bio();
}
