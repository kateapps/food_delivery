import 'dart:ui';

import 'package:empiretest/app/core/constants.dart';
import 'package:empiretest/app/data/models/category.dart';
import 'package:empiretest/app/data/models/coupon.dart';
import 'package:empiretest/app/data/models/product.dart';
import 'package:flutter/material.dart';

abstract class FakeData {
  FakeData._();

  static List<Category> get categories => [
        Category(0, 'Закуски', ImagesPath.appetizersPicture),
        Category(1, 'Суши', ImagesPath.sushiPicture),
        Category(2, 'Рис Лапша', ImagesPath.ricePicture),
        Category(3, 'Супы', ImagesPath.soupPicture),
        Category(4, 'Десерты', ImagesPath.dessertPicture),
      ];

  static const _opacity = .8;

  static List<Color> get couponColors => [
        Colors.deepPurple.withOpacity(_opacity),
        Colors.red.withOpacity(_opacity),
        Colors.green.withOpacity(_opacity),
        Colors.orange.withOpacity(_opacity),
        Colors.blue.withOpacity(_opacity),
      ];

  static List<Coupon> get coupons => [
        Coupon('За красивые глаза', discount: 15),
        Coupon('На первую покупку', discount: 25),
        Coupon('Просто так', discount: 25),
        Coupon('На новый год', discount: 20),
        Coupon('На праздники', discount: 55),
      ];

  static List<Product> get products => [
        Product(
            0,
            0,
            "Весенний ролл",
            "Вкусные, сочные. Подаются с пряным соусом. Возможно, это самое вкусное, что вы когда либо попробуете.",
            580,
            300,
            ImagesPath.soupPicture),
        Product(
            1,
            0,
            "Весенний ролл",
            "Вкусные, сочные. Подаются с пряным соусом",
            580,
            300,
            ImagesPath.soupPicture),
        Product(
            2,
            0,
            "Весенний ролл",
            "Вкусные, сочные. Подаются с пряным соусом",
            580,
            300,
            ImagesPath.soupPicture),
        Product(
            3,
            0,
            "Весенний ролл",
            "Вкусные, сочные. Подаются с пряным соусом",
            580,
            300,
            ImagesPath.soupPicture),
        Product(
            4,
            0,
            "Весенний ролл",
            "Вкусные, сочные. Подаются с пряным соусом",
            580,
            300,
            ImagesPath.soupPicture),
        Product(
            5,
            0,
            "Весенний ролл",
            "Вкусные, сочные. Подаются с пряным соусом",
            580,
            300,
            ImagesPath.soupPicture),
        Product(
            6,
            1,
            "Весенний ролл",
            "Вкусные, сочные. Подаются с пряным соусом",
            580,
            300,
            ImagesPath.soupPicture),
        Product(
            7,
            1,
            "Весенний ролл",
            "Вкусные, сочные. Подаются с пряным соусом",
            580,
            300,
            ImagesPath.soupPicture),
      ];
}
