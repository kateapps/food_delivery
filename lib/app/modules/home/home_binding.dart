import 'package:empiretest/app/modules/home/menu/allmenu/allmenu_controller.dart';
import 'package:empiretest/app/modules/home/order/order_controller.dart';
import 'package:empiretest/app/modules/home/settings/settings_controller.dart';
import 'package:get/get.dart';

import 'home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<HomeController>(
      HomeController(),
    );
    Get.put(AllmenuController());
    Get.put(OrderController());
    Get.put(SettingsController());
  }
}
