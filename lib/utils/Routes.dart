import 'package:best_calculation/ui/mainPage.dart';
import 'package:flutter/material.dart';

class Routes {
  static const mainPage = "/mainPage";

  static Route<dynamic>? navigateTo(RouteSettings routeSettings) {
    try {
      Map<String, dynamic>? args =
          routeSettings.arguments as Map<String, dynamic>?;

      args ?? <String, dynamic>{};
      switch (routeSettings.name) {
        default:
          return MaterialPageRoute(
              builder: (context) => const MainPage());
      }
    } catch (e) {
      print(e);
    }
    return null;
  }
}
