import 'package:empiretest/app/data/models/category.dart';
import 'package:empiretest/app/data/models/product.dart';
import 'package:empiretest/app/data/services/api_service.dart';
import 'package:empiretest/app/modules/home/menu/menu_navigator.dart';
import 'package:get/get.dart';

class CategoryController extends GetxController {
  // Category category;
  // CategoryController(this.category);

  Category category = Get.arguments as Category;
  final _apiService = ApiService.to;

  Future<List<Product>> getProducts() => _apiService.getProducts(category.id);

  void toProduct(Product product) => Get.toNamed(MenuRoutes.product,
      id: MenuNavigator.nestedKey, arguments: product);
}
