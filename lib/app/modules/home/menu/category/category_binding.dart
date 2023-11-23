import 'package:empiretest/app/data/models/category.dart';
import 'package:empiretest/app/modules/home/menu/category/category_controller.dart';
import 'package:get/get.dart';

class CategoryBinding implements Bindings {
  Category category;

  CategoryBinding(this.category);
  @override
  void dependencies() {
    Get.lazyPut<CategoryController>(() => CategoryController(category));
  }
}
