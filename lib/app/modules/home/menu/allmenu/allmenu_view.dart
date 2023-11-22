import 'package:empiretest/app/core/colors.dart';
import 'package:empiretest/app/core/constants.dart';
import 'package:empiretest/app/modules/home/menu/allmenu/allmenu_controller.dart';
import 'package:empiretest/app/modules/home/menu/menu_navigator.dart';
import 'package:empiretest/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class AllmenuPage extends GetView<AllmenuController> {
  const AllmenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Меню'),
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: Constants.defaultPadding),
              child: GestureDetector(
                onTap: () => Get.toNamed(Routes.QR),
                child: SvgPicture.asset(
                  IconsPath.qr,
                  color: AppColors.main,
                  height: 30,
                ),
              ),
            )
          ],
        ),
        body: SafeArea(
          child: Center(
              child: ElevatedButton(
            onPressed: () =>
                Get.toNamed(MenuRoutes.category, id: MenuNavigator.nestedKey),
            child: const Text(
              "Product",
              style: TextStyle(color: AppColors.white),
            ),
          )),
        ));
  }
}
