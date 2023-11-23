import 'package:empiretest/app/core/colors.dart';
import 'package:empiretest/app/core/constants.dart';
import 'package:empiretest/app/data/models/category.dart';
import 'package:empiretest/app/modules/home/menu/allmenu/allmenu_controller.dart';
import 'package:empiretest/app/modules/home/menu/menu_navigator.dart';
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
                      print("EOE");
                      print(snapshot.data);
                      List<Category> categories =
                          snapshot.data as List<Category>;
                      return ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          Category category = snapshot.data?[index] as Category;
                          return Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: ListTile(
                              enableFeedback: true,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      Constants.defaultPadding)),
                              contentPadding: const EdgeInsets.all(
                                  Constants.defaultPadding * .6),
                              tileColor: AppColors.grey.withOpacity(.25),
                              title: Text(
                                category.name.toUpperCase(),
                                style: Get.textTheme.titleMedium!
                                    .copyWith(fontWeight: FontWeight.bold),
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
