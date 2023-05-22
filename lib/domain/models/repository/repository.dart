import 'package:organic_market_app/domain/models/categories/main_category.dart';

abstract class Repository {
  Future<List<MainCategory>?> getCategories();
}
