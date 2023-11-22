// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:empiretest/app/core/constants.dart';
import 'package:empiretest/app/modules/home/menu/menu_navigator.dart';
import 'package:empiretest/app/modules/home/order/order_view.dart';
import 'package:empiretest/app/modules/home/settings/settings_view.dart';
import 'package:empiretest/app/routes/app_pages.dart';
import 'package:get/get.dart';

import 'package:empiretest/app/data/services/storage_service.dart';

class HomeController extends GetxController {
  var storageService = StorageService.to;

  var tabIndex = 0.obs;
  int get activeTab => tabIndex.value;

  var pages = [
    const MenuNavigator(),
    const OrderView(),
    const SettingsView(),
  ];

  var pageItems = [
    PageData(icon: IconsPath.grid, route: Routes.MENU),
    PageData(icon: IconsPath.shopping, route: Routes.ORDER),
    PageData(icon: IconsPath.settings, route: Routes.SETTINGS),
  ];
  changeTabIndex(index) => tabIndex.value = index;
}

class PageData {
  String icon;
  String route;
  PageData({
    required this.icon,
    required this.route,
  });
}
