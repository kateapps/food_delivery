import 'package:empiretest/app/data/services/storage_service.dart';
import 'package:get/get.dart';

class SettingsController extends GetxController {
  final _storageService = StorageService.to;
  clearStore() {
    _storageService.clear();
  }
}
