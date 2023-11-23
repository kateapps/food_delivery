import 'package:empiretest/app/core/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BonusesView extends StatelessWidget {
  const BonusesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Мои бонусы')),
        body: SafeArea(
            child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Количество бонусов ",
                style: Get.textTheme.titleLarge!
                    .copyWith(color: AppColors.white.withOpacity(.5)),
              ),
              Text(
                "15.21",
                style: Get.textTheme.titleLarge!
                    .copyWith(fontWeight: FontWeight.bold),
              )
            ],
          ),
        )));
  }
}
