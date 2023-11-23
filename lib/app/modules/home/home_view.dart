import 'package:empiretest/app/core/colors.dart';
import 'package:empiretest/app/modules/home/menu/menu_navigator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';

import 'home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (controller.activeTab == 0) {
          Get.back(id: MenuNavigator.nestedKey);
        }
        return false;
      },
      child: Scaffold(
        body: Obx(() => IndexedStack(
              index: controller.activeTab,
              children: controller.pages,
            )),
        bottomNavigationBar: Obx(() => BottomNavigationBar(
            showSelectedLabels: false,
            showUnselectedLabels: false,
            onTap: controller.changeTabIndex,
            currentIndex: controller.activeTab,
            type: BottomNavigationBarType.fixed,
            items: controller.pageItems
                .map((e) => BottomNavigationBarItem(
                    icon: SvgPicture.asset(
                      e.icon,
                      colorFilter: const ColorFilter.mode(
                          AppColors.white, BlendMode.srcIn),
                      width: 30,
                    ),
                    activeIcon: SvgPicture.asset(
                      e.icon,
                      colorFilter: const ColorFilter.mode(
                          AppColors.main, BlendMode.srcIn),
                      width: 30,
                    ),
                    label: ""))
                .toList())),
      ),
    );
  }
}
