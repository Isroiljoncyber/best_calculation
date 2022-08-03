import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import '../components/mainPage/calculator.dart';
import '../components/measurment/measurementPage.dart';
import '../utils/constants.dart';
import '../utils/enums.dart';

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
            measurementTop(
                widget.size,
                value,
                () => {
                      showMaterialModalBottomSheet(
                        context: context,
                        builder: (context) => SingleChildScrollView(
                          // controller: modalScrollController,
                          child: Container(
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              image: DecorationImage(
                                image: AssetImage("assets/theme1/bg_big.png"),
                                fit: BoxFit.fill,
                              ),
                            ),
                            height: widget.size.height * 0.62,
                            child: Flexible(
                              child: ListView.builder(
                                physics: const BouncingScrollPhysics(),
                                itemCount: value.values.length,
                                itemBuilder: ((context, index) =>
                                    measurementEmptyListItem(index, value, () {
                                      print("");
                                    }, isValuable: true)),
                              ),
                            ),
                          ),
                        ),
                      )
                    },
                context),
            Flexible(
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: value.values.length,
                itemBuilder: ((context, index) =>
                    measurementListItem(index, value, () {
                      print("");
                    })),
              ),
            ),
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
