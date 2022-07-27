import 'package:best_calculation/components/measurment/rulerTabItem.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/constants.dart';

class RulerPage extends StatefulWidget {
  const RulerPage({Key? key, required this.size}) : super(key: key);
  final Size size;

  @override
  State<RulerPage> createState() => _RulerPageState();
}

class _RulerPageState extends State<RulerPage> with TickerProviderStateMixin {
  late final TabController _tabController =
      TabController(length: 7, vsync: this);

  late TextEditingController textEditingController = TextEditingController();

  @override
  void initState() {
    textEditingController.addListener(() {});
    textEditingController.text = "1";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: TabBar(
          physics: const AlwaysScrollableScrollPhysics(),
          isScrollable: true,
          indicatorColor: mainColorTheme1,
          controller: _tabController,
          labelColor: mainColorTheme1,
          tabs: generateTab(),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: generateTabBody(),
      ),
    );
  }

  List<Tab> generateTab() {
    List<Tab> tabs = [];
    measurmentList.forEach((key, value) {
      tabs.add(Tab(
        text: key.toString(),
      ));
    });
    return tabs;
  }

  List<Widget> generateTabBody() {
    List<Widget> bodies = [];
    measurmentList.forEach((key, value) {
      bodies.add(
        Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              height: widget.size.height * 0.4,
              child: Row(
                children: [
                  Directionality(
                    textDirection: TextDirection.rtl,
                    child: TextButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.keyboard_arrow_down_sharp),
                      label: RichText(
                        textAlign: TextAlign.start,
                        text: TextSpan(
                          text: value.keys.first,
                          style: TextStyle(
                              color: mainColorTheme1,
                              fontWeight: FontWeight.w500,
                              fontSize: 12),
                          children: <TextSpan>[
                            TextSpan(
                                text: "\n${value.values.first.keys.first}",
                                style: TextStyle(
                                    color: mainColorTheme1,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 35)),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: TextField(
                      textAlign: TextAlign.end,
                      decoration: const InputDecoration(
                        border: InputBorder.none
                      ),
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.w500,
                        color: mainColorTheme1
                      ),

                    ),
                  ),
                ],
              ),
            ),
            ListView.builder(itemBuilder: itemBuilder)
          ],
        ),
      );
    });
    return bodies;
  }

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }
}
