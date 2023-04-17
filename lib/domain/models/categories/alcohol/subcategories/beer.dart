import 'package:organic_market_app/domain/models/categories/alcohol/alcohol.dart';

class Beer extends Alcohol {
  @override
  final String title = 'Пиво';
  final List<String> subcategories = ['Светлое', 'Темное'];

  Beer();
}
