import 'dart:math';

import 'package:empiretest/app/core/fake_data.dart';
import 'package:empiretest/app/data/models/coupon.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CouponController extends GetxController {
  var rnd = Random();

  final multy = 3;

  List<Coupon> get coupons => FakeData.coupons;

  Color getRandomColor() =>
      FakeData.couponColors[rnd.nextInt(FakeData.couponColors.length)];
}
