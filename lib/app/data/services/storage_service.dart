import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';

class StorageService extends GetxService {
  Future<StorageService> init() async {
    await Hive.initFlutter();
    return this;
  }
}
