import 'package:best_calculation/ui/settingTab.dart';
import 'package:best_calculation/ui/themesTab.dart';
import 'package:flutter/material.dart';

import '../utils/constants.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage>
    with TickerProviderStateMixin {
  late final TabController _tabController =
      TabController(length: 2, vsync: this);

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: TabBar(
          indicatorColor: Colors.white,
          controller: _tabController,
          tabs: const <Widget>[
            Tab(
              child: Text(
                "SETTINGS",
                style: TextStyle(color: Colors.black),
              ),
            ),
            Tab(
              child: Text(
                "THEMES",
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          // Setting tab
          SettingTab(),
          // Themes tab
          ThemesTab(),
        ],
      ),
    );
  }
}
