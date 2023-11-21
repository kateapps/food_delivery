import 'package:empiretest/app/core/colors.dart';
import 'package:empiretest/app/core/constants.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'onboard_controller.dart';

class OnboardView extends GetView<OnboardController> {
  const OnboardView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  ImagesPath.scaffoldBackground,
                ),
                fit: BoxFit.cover)),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(Constants.defaultPadding),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  flex: 3,
                  // color: AppColors.main,
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    // color: Colors.red,
                    child:
                        const Image(image: AssetImage(ImagesPath.onBoardMain)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 2),
                  child: Text.rich(
                    TextSpan(children: [
                      TextSpan(
                        text: 'FOOD REST\n'.toUpperCase(),
                        style: Get.textTheme.displayMedium!.copyWith(
                            color: AppColors.main, fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text: 'Удовольствие и скорость'.toUpperCase(),
                        style: Get.textTheme.bodyLarge!.copyWith(
                            color: Colors.white, fontWeight: FontWeight.normal),
                      ),
                    ]),
                    textAlign: TextAlign.center,
                  ),
                ),
                Text(
                  'Наша миссия проста: предоставить хороший сервис, вкусную еду и быструю доставку. Заказывайте блюда, пробуйте наши новинки, получайте бонусы.',
                  textAlign: TextAlign.center,
                  style: Get.textTheme.bodySmall!.copyWith(
                    color: AppColors.grey,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                ElevatedButton(
                  onPressed: () => controller.continueFirstLoad(),
                  child: const Text(
                    "ПРОДОЛЖИТЬ",
                    style: TextStyle(color: AppColors.white),
                  ),
                ),
                const Flexible(child: SizedBox()),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Text.rich(
                    TextSpan(children: [
                      const TextSpan(
                          text:
                              'Нажимая продолжить вы соглашаетесь с нашими \n'),
                      TextSpan(
                        text: 'Правилами пользования',
                        style: const TextStyle(color: AppColors.main),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () => print("Need to show terms"),
                      ),
                      const TextSpan(text: '  и '),
                      TextSpan(
                        text: 'Политикой конфиденциальности',
                        style: const TextStyle(color: AppColors.main),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () => print("Need to show Privacy"),
                      ),
                    ], style: Get.textTheme.labelSmall),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
