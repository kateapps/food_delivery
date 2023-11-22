import 'package:get/get.dart';

import '../modules/coupon/coupon_binding.dart';
import '../modules/coupon/coupon_view.dart';
import '../modules/home/home_binding.dart';
import '../modules/home/home_view.dart';
import '../modules/initial/initial_binding.dart';
import '../modules/initial/initial_view.dart';
import '../modules/onboard/onboard_binding.dart';
import '../modules/onboard/onboard_view.dart';
import '../modules/qr/qr_binding.dart';
import '../modules/qr/qr_view.dart';

// ignore_for_file: constant_identifier_names

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.INITIAL;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.ONBOARD,
      page: () => const OnboardView(),
      binding: OnboardBinding(),
    ),
    GetPage(
      name: _Paths.INITIAL,
      page: () => const InitialView(),
      binding: InitialBinding(),
    ),
    GetPage(
      name: _Paths.QR,
      page: () => const QrView(),
      binding: QrBinding(),
    ),
    GetPage(
      name: _Paths.COUPON,
      page: () => const CouponView(),
      binding: CouponBinding(),
    ),
  ];
}
