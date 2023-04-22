import 'package:organic_market_app/domain/models/categories/alcohol/alcohol.dart';
import 'package:organic_market_app/domain/models/categories/beverages.dart';
import 'package:organic_market_app/domain/models/categories/bio.dart';
import 'package:organic_market_app/domain/models/categories/bread.dart';
import 'package:organic_market_app/domain/models/categories/children_products.dart';
import 'package:organic_market_app/domain/models/categories/confectionery.dart';
import 'package:organic_market_app/domain/models/categories/fish.dart';
import 'package:organic_market_app/domain/models/categories/freezed_products.dart';
import 'package:organic_market_app/domain/models/categories/grocery.dart';
import 'package:organic_market_app/domain/models/categories/home_products.dart';
import 'package:organic_market_app/domain/models/categories/meat.dart';
import 'package:organic_market_app/domain/models/categories/milk_products.dart';
import 'package:organic_market_app/domain/models/categories/superfood.dart';
import 'package:organic_market_app/domain/models/categories/vegetables.dart';
import 'package:organic_market_app/domain/models/order.dart';
import 'package:organic_market_app/domain/models/order_status.dart';
import 'package:organic_market_app/domain/models/product.dart';
import 'package:organic_market_app/utils/app_images.dart';

abstract class TempRepository {
  static final orders = [
    Order(
      products: [
        TempRepository.products[0],
        TempRepository.products[0],
        TempRepository.products[1],
        TempRepository.products[0],
        TempRepository.products[1],
        TempRepository.products[0],
        TempRepository.products[1],
      ],
      date: DateTime(2023, 4, 31),
      status: OrderStatus.delievered,
    ),
    Order(
      products: [
        TempRepository.products[0],
      ],
      date: DateTime(2023, 5, 12),
      status: OrderStatus.onTheWay,
    ),
    Order(
      products: [
        TempRepository.products[0],
        TempRepository.products[1],
      ],
      date: DateTime(2023, 4, 12),
      status: OrderStatus.delievered,
    ),
  ];

  static final categories = [
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

  static final products = [
    Product(
      title: 'УГЛЕЧЕ ПОЛЕ Стейк Флэнк (Ангус) охл скин',
      description:
          'Альтернативный Флэнк стейк вырезается из нежирной брюшной части ближе к ребрам и имеет уникальный насыщенный вкус и яркий мясной аромат! Многогранен вариантами приготовления – отлично проявляется себя приготовленным целиком, или порезанным на слайсы. Здесь кулинарному экспериментатору есть где разгуляться! Просто пожарить, потушить или выдержать в маринаде – этот стейк подойдет для любых Ваших идей, благодаря своей текстуре с хорошо видимыми волокнами. Для мясного поголовья «Углече Поле» выбрана Абердин-Ангусская порода коров – признанная лучшей по качеству и вкусу мяса и стейков. При пастбищном содержании (то есть наши животные свободно пасутся на поле) мясо получается более диетическим и таким, каким оно и должно быть - в нем меньше жира, оно сочное, мягкое и обладает насыщенным вкусом.',
      category: Alcohol(),
      image: [
        AppImages.angus,
        AppImages.angus,
        AppImages.angus,
        AppImages.angus,
      ],
      price: 15000,
      weight: ['0,4 кг', '1,2 кг', '2,4 кг'],
      discount: [0, 25, 50],
      organic: true,
      expressDelivery: true,
    ),
    Product(
      title: 'Масло сливочное Традиционное',
      description: '',
      category: Alcohol(),
      image: [
        "assets/images/maslo.png",
        "assets/images/maslo.png",
        "assets/images/maslo.png"
      ],
      price: 329,
      weight: ['0,35 кг', '0,35 кг', '0,35 кг'],
      discount: [0, 25, 50],
    ),
    Product(
      title: 'Масло сливочное Традиционное',
      description: '',
      category: Alcohol(),
      image: [
        "assets/images/maslo.png",
        "assets/images/maslo.png",
        "assets/images/maslo.png"
      ],
      price: 329,
      weight: ['0,35 кг', '0,35 кг', '0,35 кг'],
      discount: [0, 25, 50],
    ),
    Product(
      title: 'Масло сливочное Традиционное',
      description: '',
      category: Alcohol(),
      image: [
        "assets/images/maslo.png",
        "assets/images/maslo.png",
        "assets/images/maslo.png"
      ],
      price: 329,
      weight: ['0,35 кг', '0,35 кг', '0,35 кг'],
      discount: [0, 25, 50],
    ),
    Product(
      title: 'Масло сливочное Традиционное',
      description: '',
      category: Alcohol(),
      image: [
        "assets/images/maslo.png",
        "assets/images/maslo.png",
        "assets/images/maslo.png"
      ],
      price: 329,
      weight: ['0,35 кг', '0,35 кг', '0,35 кг'],
      discount: [0, 25, 50],
    ),
    Product(
      title: 'Масло сливочное Традиционное',
      description: '',
      category: Alcohol(),
      image: [
        "assets/images/maslo.png",
        "assets/images/maslo.png",
        "assets/images/maslo.png"
      ],
      price: 329,
      weight: ['0,35 кг', '0,35 кг', '0,35 кг'],
      discount: [0, 25, 50],
    ),
  ];
}
