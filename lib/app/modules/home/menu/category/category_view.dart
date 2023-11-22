import 'package:empiretest/app/modules/home/menu/category/category_controller.dart';
import 'package:empiretest/app/modules/home/menu/menu_navigator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoryPage extends GetView<CategoryController> {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('CategoryPage'),
          leading: InkWell(
            onTap: () => Get.back(id: MenuNavigator.nestedKey),
            child: Icon(Icons.chevron_left),
          ),
        ),
        body: SafeArea(child: Text('CategoryController')));
  }
}
