import 'package:empiretest/app/modules/home/menu/allmenu/allmenu_view.dart';
import 'package:empiretest/app/modules/home/menu/category/category_view.dart';
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
      onGenerateRoute: (settings) {
        print('GENERATE $settings');
        if (settings.name == '/') return null;
        switch (settings.name) {
          case MenuRoutes.allmenu:
            return MenuPages.allmenuPage;
          case MenuRoutes.category:
            return MenuPages.categoryPage;
          default:
            return null;
        }
      },
      onPopPage: (route, result) {
        print('OWOWW');
        return false;
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

  static get productPage => GetPageRoute(
        routeName: MenuRoutes.product,
        page: () => const ProductPage(),
      );

  static get categoryPage => GetPageRoute(
        routeName: MenuRoutes.category,
        page: () => const CategoryPage(),
      );
}
