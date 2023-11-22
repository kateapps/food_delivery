import 'package:empiretest/app/core/theme.dart';
import 'package:empiretest/app/data/services/storage_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'app/routes/app_pages.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await initServices();

  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: buildTheme(),
      title: "Application",
      initialRoute: AppPages.INITIAL,
      navigatorKey: Get.nestedKey(1),
      getPages: AppPages.routes,
    ),
  );
}

Future<void> initServices() async {
  await Get.putAsync(() => StorageService().init());
}
