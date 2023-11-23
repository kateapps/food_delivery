import 'package:empiretest/app/modules/home/settings/bonuses/bonuses_view.dart';
import 'package:empiretest/app/modules/home/settings/settings_page/settings_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingsNavigator extends StatelessWidget {
  static int get nestedKey => 3;
  const SettingsNavigator({super.key});

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: Get.nestedKey(nestedKey),
      initialRoute: SettingsRoutes.initial,
      onGenerateRoute: (settings) {
        print('GENERATE $settings');
        if (settings.name == '/') return null;
        switch (settings.name) {
          case SettingsRoutes.settings:
            return SettingsPages.settings;
          default:
            return null;
        }
      },
      onPopPage: (route, result) {
        print('OWOWW');
        return false;
      },
    );
  }
}

abstract class SettingsRoutes {
  SettingsRoutes._();
  static const initial = SettingsRoutes.settings;

  static const settings = '/settings';
  static const bonuses = '/bonuses';
  static const aboutUs = '/aboutas';
}

abstract class SettingsPages {
  SettingsPages._();

  static get settings => GetPageRoute(
        routeName: SettingsRoutes.settings,
        page: () => const SettingsView(),
      );

  static get bonusesPage => GetPageRoute(
        routeName: SettingsRoutes.bonuses,
        page: () => const BonusesView(),
      );
}
