import 'dart:math';

import 'package:empiretest/app/core/fake_data.dart';
import 'package:empiretest/app/data/models/category.dart';
import 'package:empiretest/app/data/models/product.dart';
import 'package:get/get.dart';

class ApiService extends GetxService {
  static ApiService get to => Get.find();

  final Random _random = Random();

  Future<List<Category>> getCategories() async {
    await Future.delayed(_getDuration());
    return FakeData.categories;
  }

  Future<List<Product>> getProducts(int category) async {
    await Future.delayed(_getDuration());
    return FakeData.products.where((p) => p.categoryId == category).toList();
  }

  Duration _getDuration() =>
      Duration(milliseconds: _random.nextInt(1500) + 300);

  Future<ApiService> init() async {
    return this;
  }
}
