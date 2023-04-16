import 'package:organic_market_app/domain/models/product.dart';
import 'package:organic_market_app/utils/app_images.dart';

abstract class TempRepository {
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
      image: [
        AppImages.angus,
        AppImages.angus,
        AppImages.angus,
        AppImages.angus,
      ],
      price: 1500,
      weight: ['0,4 кг', '1,2 кг', '2,4 кг'],
      discount: [0, 25, 50],
      organic: true,
      expressDelivery: true,
    ),
    Product(
      title: 'Масло сливочное Традиционное',
      description: '',
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
