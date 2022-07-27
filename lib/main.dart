import 'package:best_calculation/ui/mainPage.dart';
import 'package:best_calculation/utils/Routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MainPage(),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: (routeSetting) =>  Routes.navigateTo(routeSetting),
    );
  }
}

