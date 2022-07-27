import 'package:best_calculation/ui/calculatorPage.dart';
import 'package:best_calculation/ui/rulerPage.dart';
import 'package:best_calculation/utils/constants.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage>
    with TickerProviderStateMixin {

  late final TabController _tabController =
      TabController(length: 3, vsync: this);

  @override
  void initState() {
    _tabController.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: DefaultTabController(
        initialIndex: 0,
        length: 3,
        child: Scaffold(
          extendBodyBehindAppBar: true,
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            flexibleSpace: const Image(
              image: AssetImage("assets/theme1/bg_appbar.png"),
              height: 90,
              fit: BoxFit.fill,
            ),
            actions: [
              InkWell(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.only(right: 10, left: 10),
                  child: Image(
                    height: 33,
                    width: 33,
                    image: const AssetImage("assets/common/ic_setting.png"),
                    color: mainColorTheme1,
                  ),
                ),
              ),
            ],
            backgroundColor: Colors.transparent,
            elevation: 0,
            iconTheme: IconThemeData(color: mainColorTheme1, size: 30),
            title: TabBar(
              indicatorColor: Colors.transparent,
              controller: _tabController,
              tabs: [
                Tab(
                  icon: Image(
                    image: AssetImage("assets/common/ic_calc.png"),
                    height: 25,
                    color: _tabController.index == 0
                        ? mainColorTheme1
                        : unSelectedAppBar,
                  ),
                ),
                Tab(
                  icon: Image(
                    image: AssetImage("assets/common/ic_currency.png"),
                    height: 35,
                    color: _tabController.index == 1
                        ? mainColorTheme1
                        : unSelectedAppBar,
                  ),
                ),
                Tab(
                  icon: Image(
                    image: AssetImage("assets/common/ic_ruller.png"),
                    height: 35,
                    color: _tabController.index == 2
                        ? mainColorTheme1
                        : unSelectedAppBar,
                  ),
                ),
              ],
            ),
          ),
          drawer: Drawer(
            // Add a ListView to the drawer. This ensures the user can scroll
            // through the options in the drawer if there isn't enough vertical
            // space to fit everything.
            child: ListView(
              // Important: Remove any padding from the ListView.
              padding: EdgeInsets.zero,
              children: [
                const DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                  ),
                  child: Text('Drawer Header'),
                ),
                ListTile(
                  title: const Text('Item 1'),
                  onTap: () {
                    // Update the state of the app
                    // ...
                    // Then close the drawer
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: const Text('Item 2'),
                  onTap: () {
                    // Update the state of the app
                    // ...
                    // Then close the drawer
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
          body: Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              image: DecorationImage(
                image: AssetImage("assets/theme1/bg_big.png"),
                fit: BoxFit.fill,
              ),
            ),
            child: SafeArea(
              child: TabBarView(
                dragStartBehavior: DragStartBehavior.start,
                controller: _tabController,
                children: <Widget>[
                  CalculationPage(size: size),
                  const Center(
                    child: Text("It's rainy here"),
                  ),
                 RulerPage(size: size)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
  }
}
