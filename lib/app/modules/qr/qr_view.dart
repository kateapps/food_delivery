import 'package:empiretest/app/core/colors.dart';
import 'package:empiretest/app/core/constants.dart';
import 'package:empiretest/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';
import 'package:qr_flutter/qr_flutter.dart';

import 'qr_controller.dart';

class QrView extends GetView<QrController> {
  const QrView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        systemNavigationBarColor: AppColors.main,
        statusBarColor: AppColors.main,
      ),
      child: Scaffold(
        backgroundColor: AppColors.main,
        appBar: AppBar(
          backgroundColor: AppColors.main,
          title: const Text('QR CODE'),
          centerTitle: true,
        ),
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(Constants.defaultPadding * 3),
                  child: QrImageView(
                    data: DateTime.now().toString(),
                    dataModuleStyle: const QrDataModuleStyle(
                        dataModuleShape: QrDataModuleShape.square,
                        color: Colors.white),
                    eyeStyle: const QrEyeStyle(
                        eyeShape: QrEyeShape.square, color: Colors.white),
                  ),
                ),
                TextButton(
                  style: TextButton.styleFrom(foregroundColor: AppColors.white),
                  onPressed: () => Get.toNamed(Routes.COUPON),
                  child: Text(
                    "Мои купоны",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: Get.textTheme.titleMedium!.fontSize),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
