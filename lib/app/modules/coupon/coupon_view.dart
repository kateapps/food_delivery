import 'package:empiretest/app/core/colors.dart';
import 'package:empiretest/app/core/constants.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'coupon_controller.dart';

class CouponView extends GetView<CouponController> {
  const CouponView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Мои купоны'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(Constants.defaultPadding * 2),
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 15,
              childAspectRatio: 5 / 3,
            ),
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 20,
            itemBuilder: (context, index) {
              return Stack(
                children: [
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    color: AppColors.main,
                    child: const Padding(
                      padding: EdgeInsets.only(
                        top: Constants.defaultPadding / 2,
                        left: Constants.defaultPadding / 2,
                        right: Constants.defaultPadding / 4,
                        bottom: Constants.defaultPadding / 4,
                      ),
                      child: ListTile(
                        title: Text(
                          "КУПОН -15%",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                          "За красивые глаза",
                          style: TextStyle(fontSize: 11),
                        ),
                      ),
                    ),
                  ),
                  const Positioned(
                    top: Constants.defaultPadding / 2,
                    left: Constants.defaultPadding / 2,
                    child: Icon(
                      Icons.star_rounded,
                      size: Constants.defaultPadding * 1.2,
                      color: Colors.black,
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
