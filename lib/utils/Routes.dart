import 'package:best_calculation/ui/mainPage.dart';
import 'package:best_calculation/ui/settingPage.dart';
import 'package:flutter/material.dart';

class Routes {
  static const mainPage = "/mainPage";
  static const settingPage = "/setting";

  static Route<dynamic>? navigateTo(RouteSettings routeSettings) {
    try {
      Map<String, dynamic>? args =
          routeSettings.arguments as Map<String, dynamic>?;

      args ?? <String, dynamic>{};
      switch (routeSettings.name) {
        case settingPage:
          return MaterialPageRoute(builder: (context) => const SettingPage());
        default:
          return MaterialPageRoute(builder: (context) => const MainPage());
      }
    } catch (e) {
      print(e);
    }
    return null;
  }
}
