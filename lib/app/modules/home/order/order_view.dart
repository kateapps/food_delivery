import 'package:empiretest/app/core/colors.dart';
import 'package:empiretest/app/core/constants.dart';
import 'package:empiretest/app/modules/home/menu/widgets/counter_button.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'order_controller.dart';

class OrderView extends GetView<OrderController> {
  const OrderView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Заказ'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Obx(
            () => ListView(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                if (controller.order.values.isEmpty)
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.shopping_bag_outlined),
                        Text(
                          "Ваша корзина пуста!",
                          style: Get.textTheme.bodyMedium!
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  separatorBuilder: (context, index) => Divider(
                    color: Colors.grey.withOpacity(.2),
                    indent: Constants.defaultPadding * 2,
                    endIndent: Constants.defaultPadding * 2,
                  ),
                  itemBuilder: (context, index) {
                    var product = controller.order.values.elementAt(index);
                    return ListTile(
                      contentPadding:
                          const EdgeInsets.all(Constants.defaultPadding * .6),
                      leading: Image.asset(
                        product.imgUrl,
                      ),
                      title: Text(
                        product.name,
                        style: Get.textTheme.titleMedium!
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        "${product.price} руб.",
                        style: Get.textTheme.bodyMedium!
                            .copyWith(color: AppColors.grey),
                      ),
                      trailing: CounterButton(
                        count: product.count,
                        increment: () =>
                            controller.incrementProductCount(product),
                        decrement: () =>
                            controller.decrementProductCount(product),
                        size: CounterButtonSize.medium,
                      ),
                    );
                  },
                  shrinkWrap: true,
                  itemCount: controller.order.values.length,
                ),
                if (controller.order.values.isNotEmpty)
                  Column(
                    children: [
                      Text(
                        "Сумма заказа: ${controller.getSumm()} рублей.",
                      ),
                      Padding(
                        padding: const EdgeInsets.all(Constants.defaultPadding),
                        child: TextButton(
                          child: const Text(
                            "Очистить корзину",
                            style: TextStyle(color: AppColors.white),
                          ),
                          onPressed: () => controller.clearOrder(),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: Constants.defaultPadding * 3),
                        child: ElevatedButton(
                          child: const Text(
                            "Заказать",
                            style: TextStyle(color: AppColors.white),
                          ),
                          onPressed: () {},
                        ),
                      )
                    ],
                  )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
