import 'package:empiretest/app/core/colors.dart';
import 'package:empiretest/app/core/constants.dart';
import 'package:empiretest/app/data/models/category.dart';
import 'package:empiretest/app/modules/home/menu/allmenu/allmenu_controller.dart';
import 'package:empiretest/app/modules/home/menu/menu_navigator.dart';
import 'package:empiretest/app/modules/home/order/order_controller.dart';
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
          minimum:
              const EdgeInsets.symmetric(horizontal: Constants.defaultPadding),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: Constants.defaultPadding),
                FutureBuilder(
                  future: controller.getCategories(),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      List<Category> categories =
                          snapshot.data as List<Category>;
                      return ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          Category category = snapshot.data?[index] as Category;
                          var orderController = Get.find<OrderController>();
                          var amount = orderController
                              .getAmountProductsInCategory(category.id);
                          return Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: Constants.defaultPadding / 2),
                            child: ListTile(
                              enableFeedback: true,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      Constants.defaultPadding)),
                              contentPadding: const EdgeInsets.all(
                                  Constants.defaultPadding * .6),
                              tileColor: AppColors.grey.withOpacity(.25),
                              title: Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      category.name.toUpperCase(),
                                      style: Get.textTheme.titleMedium!
                                          .copyWith(
                                              fontWeight: FontWeight.bold),
                                    ),
                                    if (amount > 0)
                                      Container(
                                        width: 30,
                                        // height: 30,
                                        margin: const EdgeInsets.only(left: 8),
                                        // padding: const EdgeInsets.symmetric(
                                        //     horizontal: 2),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: AppColors.main,
                                        ),
                                        child: Center(
                                          child: Text(
                                            amount.toString(),
                                            style: const TextStyle(
                                                fontWeight: FontWeight.bold),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      )
                                  ],
                                ),
                              ),
                              trailing: const Icon(Icons.chevron_right_rounded),
                              leading: ClipRRect(
                                  borderRadius: BorderRadius.circular(
                                      Constants.defaultPadding * .6),
                                  child: Image.asset(category.imageUrl)),
                              onTap: () => controller.toCategory(category),
                            ),
                          );
                        },
                        itemCount: categories.length,
                      );
                    }
                    return const Center(
                      child: CircularProgressIndicator(color: AppColors.main),
                    );
                  },
                ),
              ],
            ),
          ),
        ));
  }
}
