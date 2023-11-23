import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AboutUsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('AboutUsPage')),
        body: SafeArea(
            child: Center(
                child: Text(
                    'Добро пожаловать в Food Rest, где яркие вкусы нашего ресторана сочетаются с комфортом вашего дома. В FRest мы считаем, что исключительные гастрономические впечатления должны выходить за пределы наших дверей. Вот почему мы передаем наш кулинарный опыт непосредственно вам через нашу бесперебойную и надежную службу доставки\n Раскройте возможности Food Rest и улучшите свои впечатления от ужина, не покидая своего убежища. Присоединяйтесь к нам и насладитесь необыкновенным вкусом, который делает FRest кулинарной сенсацией.'))));
  }
}
