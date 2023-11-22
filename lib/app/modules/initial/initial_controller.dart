import 'package:empiretest/app/data/services/storage_service.dart';
import 'package:empiretest/app/routes/app_pages.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';

class InitialController extends GetxController {
  var storageService = StorageService.to;

  @override
  void onReady() {
    print('ITS FIRST LAUNCH: ${storageService.isFirstLaunch}');
    if (storageService.isFirstLaunch) {
      Get.offNamed(Routes.ONBOARD);
    } else {
      Get.offNamed(Routes.HOME);
    }
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.manual,
      overlays: [SystemUiOverlay.bottom, SystemUiOverlay.top],
    );
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
      systemNavigationBarContrastEnforced: false,
      systemNavigationBarColor: Get.theme.primaryColor,
    ));
    FlutterNativeSplash.remove();
    super.onReady();
  }
}
