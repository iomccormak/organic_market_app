import 'package:get_it/get_it.dart';
import 'package:organic_market_app/data/api/network/network_manager.dart';
import 'package:organic_market_app/domain/models/categories/alcohol.dart';
import 'package:organic_market_app/domain/models/categories/beverages.dart';
import 'package:organic_market_app/domain/models/categories/bio.dart';
import 'package:organic_market_app/domain/models/categories/bread.dart';
import 'package:organic_market_app/domain/models/categories/children_products.dart';
import 'package:organic_market_app/domain/models/categories/confectionery.dart';
import 'package:organic_market_app/domain/models/categories/fake_store.dart';
import 'package:organic_market_app/domain/models/categories/fish.dart';
import 'package:organic_market_app/domain/models/categories/freezed_products.dart';
import 'package:organic_market_app/domain/models/categories/grocery.dart';
import 'package:organic_market_app/domain/models/categories/home_products.dart';
import 'package:organic_market_app/domain/models/categories/meat.dart';
import 'package:organic_market_app/domain/models/categories/milk_products.dart';
import 'package:organic_market_app/domain/models/categories/superfood.dart';
import 'package:organic_market_app/domain/models/categories/vegetables.dart';
import 'package:organic_market_app/utils/app_images.dart';

abstract class MockRepository {
  static final categories = [
    FakeStore(),
    Alcohol(),
    Beverages(),
    Bio(),
    Bread(),
    ChildrenProducts(),
    Confectionery(),
    Fish(),
    FreezedProducts(),
    Grocery(),
    HomeProducts(),
    Meat(),
    MilkProducts(),
    Superfood(),
    Vegetables(),
  ];

  static const mainAdvertisments = [
    "assets/images/mainAdv1.png",
    "assets/images/mainAdv2.png",
    "assets/images/mainAdv3.png",
  ];
}
