import 'package:empiretest/app/core/constants.dart';
import 'package:empiretest/app/data/models/category.dart';
import 'package:empiretest/app/data/models/product.dart';

abstract class FakeData {
  FakeData._();

  static List<Category> get categories => [
        Category(0, 'Закуски', ImagesPath.appetizersPicture),
        Category(1, 'Суши', ImagesPath.sushiPicture),
        Category(2, 'Рис Лапша', ImagesPath.ricePicture),
        Category(3, 'Супы', ImagesPath.soupPicture),
        Category(4, 'Десерты', ImagesPath.dessertPicture),
      ];

  static List<Product> get products => [
        Product(0, 0, "Весенний ролл",
            "Вкусные, сочные. Подаются с пряным соусом", 580, 300),
        Product(1, 0, "Весенний ролл",
            "Вкусные, сочные. Подаются с пряным соусом", 580, 300),
        Product(1, 0, "Весенний ролл",
            "Вкусные, сочные. Подаются с пряным соусом", 580, 300),
        Product(1, 0, "Весенний ролл",
            "Вкусные, сочные. Подаются с пряным соусом", 580, 300),
        Product(1, 0, "Весенний ролл",
            "Вкусные, сочные. Подаются с пряным соусом", 580, 300),
      ];
}
