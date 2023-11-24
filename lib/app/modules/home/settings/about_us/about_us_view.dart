import 'package:empiretest/app/core/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AboutUsView extends StatelessWidget {
  const AboutUsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('О нас')),
        body: SafeArea(
          minimum: const EdgeInsets.symmetric(
              horizontal: Constants.defaultPadding * 2,
              vertical: Constants.defaultPadding),
          child: Text(
            'Добро пожаловать в Food Rest, место где яркие вкусы нашего ресторана сочетаются с комфортом вашего дома. В FRest мы считаем, что исключительные гастрономические впечатления должны выходить за пределы наших дверей. Вот почему мы передаем наш кулинарный опыт непосредственно вам через нашу бесперебойную и надежную службу доставки.\nРаскройте возможности Food Rest и улучшите свои впечатления от ужина, не покидая своего убежища. Присоединяйтесь к нам и насладитесь необыкновенным вкусом, который делает FRest кулинарной сенсацией.',
            style: Get.textTheme.bodyMedium!,
          ),
        ));
  }
}
