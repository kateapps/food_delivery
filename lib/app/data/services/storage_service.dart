import 'package:empiretest/app/core/constants.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';

enum StorageKeys {
  firstLaunch,
}

class StorageService extends GetxService {
  static StorageService get to => Get.find();
  late Box<bool> box;

  bool get isFirstLaunch => _getFirstLaunchData();

  bool _getFirstLaunchData() => box.get(StorageKeys.firstLaunch.name) ?? true;

  Future<void> setFirstLaunchData(value) =>
      box.put(StorageKeys.firstLaunch.name, value);

  Future<StorageService> init() async {
    await Hive.initFlutter();
    box = await Hive.openBox<bool>(Constants.defaultBoolBox);
    print(box.get(StorageKeys.firstLaunch.name));
    return this;
  }

  void clear() {
    box.clear();
  }
}
