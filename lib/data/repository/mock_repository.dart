import 'package:organic_market_app/domain/models/categories/main_category.dart';
import 'package:organic_market_app/domain/models/repository/repository.dart';
import 'package:organic_market_app/utils/app_constants/app_icons.dart';
import 'package:organic_market_app/utils/app_constants/app_images.dart';

class MockRepository implements Repository {
  final List<MainCategory> categories = [
    const MainCategory(
      title: 'Fake Store Procucts',
      icon: AppImages.catCon,
      background: AppIcons.figMilk,
    ),
    const MainCategory(
      title: 'Алкоголь',
      icon: AppImages.catAlco,
      background: AppIcons.figAlco,
    ),
    const MainCategory(
      title: 'Напитки',
      icon: AppImages.catBev,
      background: AppIcons.figBev,
    ),
    const MainCategory(
      title: 'Биологически активные добавки',
      icon: AppImages.catBio,
      background: AppIcons.figBio,
    ),
    const MainCategory(
      title: 'Хлеб, выпечка',
      icon: AppImages.catBread,
      background: AppIcons.figBread,
    ),
    const MainCategory(
      title: 'Детям',
      icon: AppImages.catChild,
      background: AppIcons.figChild,
    ),
    const MainCategory(
      title: 'Кондитерские изделия',
      icon: AppImages.catCon,
      background: AppIcons.figCon,
    ),
    const MainCategory(
      title: 'Рыба, икра, краб',
      icon: AppImages.catFish,
      background: AppIcons.figFish,
    ),
    const MainCategory(
      title: 'Замороженные продукты',
      icon: AppImages.catFreezed,
      background: AppIcons.figFreezed,
    ),
    const MainCategory(
      title: 'Бакалея',
      icon: AppImages.catGroc,
      background: AppIcons.figGroc,
    ),
    const MainCategory(
      title: 'Товары для дома',
      icon: AppImages.catHome,
      background: AppIcons.figHome,
    ),
    const MainCategory(
      title: 'Мясо, птица',
      icon: AppImages.catMeat,
      background: AppIcons.figMeat,
    ),
    const MainCategory(
      title: 'Молочные продукты, яйцо',
      icon: AppImages.catMilk,
      background: AppIcons.figMilk,
    ),
    const MainCategory(
      title: 'Суперфуды',
      icon: AppImages.catSuper,
      background: AppIcons.figSuper,
    ),
    const MainCategory(
      title: 'Овощи, фрукты',
      icon: AppImages.catVeg,
      background: AppIcons.figVeg,
    ),
  ];

  @override
  Future<List<MainCategory>> getCategories() async {
    return categories;
  }
}
