import 'package:customizable_counter/customizable_counter.dart';
import 'package:empiretest/app/core/colors.dart';
import 'package:empiretest/app/core/constants.dart';
import 'package:empiretest/app/data/models/product.dart';
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
        title: Text(controller.category.name),
        leading: InkWell(
          onTap: () => Get.back(id: MenuNavigator.nestedKey),
          child: const Icon(Icons.chevron_left),
        ),
      ),
      body: SafeArea(
        minimum: const EdgeInsets.all(Constants.defaultPadding),
        child: FutureBuilder(
          future: controller.getProducts(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done &&
                snapshot.hasData) {
              var products = snapshot.data as List<Product>;
              if (products.isEmpty) {
                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.favorite,
                        size: 40,
                        color: AppColors.main,
                      ),
                      Text(
                        "Раздел пуст.\nНо мы уже работаем над этим!",
                        style: Get.textTheme.bodyMedium!,
                      ),
                    ],
                  ),
                );
              }
              return ListView.builder(
                itemCount: products.length,
                itemBuilder: (context, index) {
                  var product = products[index];
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              Constants.defaultPadding * .6)),
                      tileColor: AppColors.grey.withOpacity(.2),
                      title: Text(
                        product.name,
                        style: Get.textTheme.titleMedium!
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        product.description,
                        style: Get.textTheme.labelMedium!
                            .copyWith(color: AppColors.grey),
                      ),
                      contentPadding:
                          const EdgeInsets.all(Constants.defaultPadding * .6),
                      leading: Image.asset(
                        ImagesPath.dessertPicture,
                      ),
                      trailing: CustomizableCounter(
                        backgroundColor: AppColors.main,
                        buttonText: "${product.price} р.",
                        borderRadius: Constants.defaultPadding,
                        textSize: 15,
                        borderColor: Colors.transparent,
                      ),
                      // trailing: TextButton(
                      //   style: TextButton.styleFrom(
                      //     enableFeedback: true,
                      //     backgroundColor: AppColors.main,
                      //     foregroundColor: AppColors.white,
                      //     padding: const EdgeInsets.symmetric(horizontal: 10),
                      //   ),
                      //   onPressed: () {},
                      //   child: Text("${product.price} руб."),
                      // ),
                    ),
                  );
                },
              );
            }
            return const Center(
              child: CircularProgressIndicator(
                color: AppColors.main,
              ),
            );
          },
        ),
      ),
    );
  }
}
