import 'package:empiretest/app/core/colors.dart';
import 'package:empiretest/app/core/constants.dart';
import 'package:empiretest/app/core/fake_data.dart';
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
            itemCount: controller.coupons.length * controller.multy,
            itemBuilder: (context, index) {
              var coupon =
                  controller.coupons[index % controller.coupons.length];
              return Stack(
                children: [
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    color: controller.getRandomColor(),
                    child: ListTile(
                      onTap: () {},
                      contentPadding: const EdgeInsets.only(
                        top: Constants.defaultPadding / 2,
                        left: Constants.defaultPadding / 2,
                        right: Constants.defaultPadding / 4,
                        bottom: Constants.defaultPadding / 4,
                      ),
                      title: Text(
                        "КУПОН -${coupon.discount}%",
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            overflow: TextOverflow.ellipsis),
                      ),
                      subtitle: Text(
                        coupon.title,
                        style: const TextStyle(
                            fontSize: 11, overflow: TextOverflow.ellipsis),
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
