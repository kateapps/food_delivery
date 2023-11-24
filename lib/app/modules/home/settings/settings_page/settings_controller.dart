import 'package:empiretest/app/data/services/storage_service.dart';
import 'package:empiretest/app/modules/home/settings/setting_navigator.dart';
import 'package:empiretest/app/routes/app_pages.dart';
import 'package:get/get.dart';

class SettingsController extends GetxController {
  final _storageService = StorageService.to;

  clearStore() {
    _storageService.clear();
    Get.offNamed(Routes.ONBOARD);
  }

  toBonuses() =>
      Get.toNamed(SettingsRoutes.bonuses, id: SettingsNavigator.nestedKey);

  toAboutUs() =>
      Get.toNamed(SettingsRoutes.aboutUs, id: SettingsNavigator.nestedKey);
}
