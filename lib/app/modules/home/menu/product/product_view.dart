import 'package:empiretest/app/modules/home/menu/product/product_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductPage extends GetView<ProductController> {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('ProductPage')),
        body: SafeArea(child: Text('ProductController')));
  }
}
