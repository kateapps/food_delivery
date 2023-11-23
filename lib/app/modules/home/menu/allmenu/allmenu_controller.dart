import 'package:empiretest/app/data/models/category.dart';
import 'package:empiretest/app/data/services/api_service.dart';
import 'package:empiretest/app/modules/home/menu/menu_navigator.dart';
import 'package:get/get.dart';

class AllmenuController extends GetxController {
  final _apiService = ApiService.to;

  Future<List<Category>> getCategories() => _apiService.getCategories();

  void toCategory(Category category) {
    Get.toNamed(
      MenuRoutes.category,
      id: MenuNavigator.nestedKey,
      arguments: category,
    );
  }
}
