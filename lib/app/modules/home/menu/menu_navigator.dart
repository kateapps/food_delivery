import 'package:empiretest/app/data/models/category.dart';
import 'package:empiretest/app/data/models/product.dart';
import 'package:empiretest/app/modules/home/menu/allmenu/allmenu_view.dart';
import 'package:empiretest/app/modules/home/menu/category/category_binding.dart';
import 'package:empiretest/app/modules/home/menu/category/category_view.dart';
import 'package:empiretest/app/modules/home/menu/product/product_binding.dart';
import 'package:empiretest/app/modules/home/menu/product/product_controller.dart';
import 'package:empiretest/app/modules/home/menu/product/product_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MenuNavigator extends StatelessWidget {
  static int get nestedKey => 2;
  const MenuNavigator({super.key});

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: Get.nestedKey(nestedKey),
      initialRoute: MenuRoutes.initial,
      onUnknownRoute: (settings) => null,
      onGenerateRoute: (settings) {
        Get.routing.args = settings.arguments;
        switch (settings.name) {
          case MenuRoutes.allmenu:
            return MenuPages.allmenuPage;
          case MenuRoutes.category:
            return MenuPages.categoryPage;
          case MenuRoutes.product:
            return MenuPages.productPage;
          default:
            return null;
        }
      },
    );
  }
}

abstract class MenuRoutes {
  MenuRoutes._();
  static const initial = MenuRoutes.allmenu;

  static const allmenu = '/allmenu';
  static const category = '/category';
  static const product = '/product';
}

abstract class MenuPages {
  MenuPages._();

  static get allmenuPage => GetPageRoute(
        routeName: MenuRoutes.allmenu,
        page: () => const AllmenuPage(),
      );

  static get categoryPage => GetPageRoute(
        routeName: MenuRoutes.category,
        page: () => const CategoryPage(),
        binding: CategoryBinding(),
        // settings: settings,
      );

  static get productPage => GetPageRoute(
        routeName: MenuRoutes.product,
        page: () => const ProductPage(),
        binding: ProductBinding(),
      );
}
