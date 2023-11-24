import 'package:empiretest/app/core/colors.dart';
import 'package:empiretest/app/core/constants.dart';
import 'package:empiretest/app/modules/home/menu/product/product_controller.dart';
import 'package:empiretest/app/modules/home/menu/widgets/counter_button.dart';
import 'package:empiretest/app/modules/home/order/order_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductPage extends GetView<ProductController> {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    var product = controller.product;
    return Scaffold(
        appBar: AppBar(title: Text(product.name)),
        body: SafeArea(
            minimum: const EdgeInsets.symmetric(
                horizontal: Constants.defaultPadding * 2),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      padding:
                          const EdgeInsets.all(Constants.defaultPadding * 2),
                      child: Image.asset(
                        product.imgUrl,
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                    Positioned.fill(
                      bottom: Constants.defaultPadding * .5,
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Obx(() {
                          var orderController = Get.find<OrderController>();
                          return CounterButton(
                            count: orderController.getCountProduct(product),
                            increment: () =>
                                orderController.incrementProductCount(product),
                            decrement: () =>
                                orderController.decrementProductCount(product),
                            size: CounterButtonSize.large,
                            price: product.price,
                          );
                        }),
                        // Container(
                        //   padding: const EdgeInsets.symmetric(
                        //     horizontal: Constants.defaultPadding,
                        //     vertical: Constants.defaultPadding * .5,
                        //   ),
                        //   decoration: BoxDecoration(
                        //       color: AppColors.main,
                        //       borderRadius: BorderRadius.circular(
                        //           Constants.defaultPadding * 1.5)),
                        //   child: Text(
                        //     "${product.price} руб.",
                        //     style: Get.textTheme.bodyLarge!.copyWith(
                        //       fontWeight: FontWeight.bold,
                        //     ),
                        //   ),
                        // ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: Constants.defaultPadding),
                Text(
                  "Описание",
                  style: Get.textTheme.bodyLarge!.copyWith(
                      color: AppColors.white, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.left,
                ),
                Text(
                  product.description,
                  style: Get.textTheme.bodyMedium!
                      .copyWith(color: AppColors.white.withOpacity(.5)),
                ),
                const SizedBox(height: Constants.defaultPadding),
                Text(
                  "Порция",
                  style: Get.textTheme.bodyLarge!.copyWith(
                      color: AppColors.white, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.left,
                ),
                Text(
                  "${product.portion} гр.",
                  style: Get.textTheme.bodyMedium!
                      .copyWith(color: AppColors.white.withOpacity(.5)),
                ),
                const SizedBox(height: Constants.defaultPadding),
                Text(
                  "Стоимость",
                  style: Get.textTheme.bodyLarge!.copyWith(
                      color: AppColors.white, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.left,
                ),
                Text(
                  "${product.price} руб.",
                  style: Get.textTheme.bodyMedium!
                      .copyWith(color: AppColors.white.withOpacity(.5)),
                ),
              ],
            )));
  }
}
