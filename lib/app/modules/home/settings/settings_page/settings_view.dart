import 'package:empiretest/app/core/constants.dart';
import 'package:empiretest/app/modules/home/settings/settings_page/settings_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class SettingsView extends GetView<SettingsController> {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Настройки')),
        body: SafeArea(
            minimum: const EdgeInsets.symmetric(
                horizontal: Constants.defaultPadding),
            child: Column(
              children: [
                ListTile(
                  onTap: () => controller.toBonuses(),
                  leading: const Icon(Icons.local_activity_rounded),
                  title: const Text("Программа лояльности"),
                ),
                ListTile(
                  onTap: () => controller.toAboutUs(),
                  leading: const Icon(Icons.person_4_rounded),
                  title: const Text("О нас"),
                ),
                ListTile(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  onTap: () => controller.clearStore(),
                  leading: const Icon(Icons.restart_alt_rounded),
                  title: const Text("Сбросить настройки"),
                ),
              ],
            )));
  }
}
