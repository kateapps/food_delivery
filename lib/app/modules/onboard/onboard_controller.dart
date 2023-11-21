import 'package:empiretest/app/data/services/storage_service.dart';
import 'package:empiretest/app/routes/app_pages.dart';
import 'package:get/get.dart';

class OnboardController extends GetxController {
  var storageService = StorageService.to;

  void continueFirstLoad() {
    storageService.setFirstLaunchData(false);
    Get.offNamed(Routes.HOME);
  }
}
