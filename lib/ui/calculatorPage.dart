import 'package:best_calculation/utils/constants.dart';
import 'package:best_calculation/utils/enums.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class CalculationPage extends StatefulWidget {
  const CalculationPage({Key? key, required this.size}) : super(key: key);
  final Size size;

  @override
  State<CalculationPage> createState() => _CalculationPageState();
}

class _CalculationPageState extends State<CalculationPage> {
  late TextEditingController _textEditingControllerTop;
  late TextEditingController _textEditingControllerBottom;

  late ScrollController? modalScrollController =
      ModalScrollController.of(context);

  @override
  void initState() {
    _textEditingControllerTop = TextEditingController();
    _textEditingControllerBottom = TextEditingController();
    super.initState();

    _textEditingControllerTop.text = "0";
    _textEditingControllerBottom.text = "0";
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          decoration: BoxDecoration(
              border: Border.all(color: mainColorTheme1, width: 2)),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Center(
                      child: Text(
                        "My name is Isroiljon",
                        style: TextStyle(
                          fontSize: 22,
                          color: mainColorTheme1,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      border: Border.all(color: mainColorTheme1, width: 2),
                    ),
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () {},
                        child: Icon(Icons.history_rounded,
                            color: mainColorTheme1, size: 30),
                      ),
                    ),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextField(
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                    ),
                    controller: _textEditingControllerTop,
                    textAlign: TextAlign.end,
                    enabled: false,
                    style: TextStyle(
                      fontSize: 75,
                      color: mainColorTheme1,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  TextField(
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                    ),
                    dragStartBehavior: DragStartBehavior.start,
                    textAlign: TextAlign.end,
                    controller: _textEditingControllerBottom,
                    enabled: false,
                    style: TextStyle(
                      fontSize: 40,
                      color: mainColorTheme1,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: widget.size.height * 0.54,
          child: GridView.count(
            scrollDirection: Axis.vertical,
            physics: const BouncingScrollPhysics(),
            crossAxisCount: 4,
            childAspectRatio: 1.2,
            mainAxisSpacing: 5,
            crossAxisSpacing: 5,
            children: [
              buttonKeyboard(
                  () {}, "xⁿ", mainColorTheme1, ButtonType.mathEquation),
              buttonKeyboard(
                  () {}, "%", mainColorTheme1, ButtonType.mathEquation),
              buttonKeyboard(
                  () {}, "÷", mainColorTheme1, ButtonType.mathEquation),
              buttonKeyboard(
                  () {}, "⌫", mainColorTheme1, ButtonType.mathEquation),
              buttonKeyboard(() {}, "7", mainColorTheme1, ButtonType.numbers),
              buttonKeyboard(() {}, "8", mainColorTheme1, ButtonType.numbers),
              buttonKeyboard(() {}, "9", mainColorTheme1, ButtonType.numbers),
              buttonKeyboard(
                  () {}, "x", mainColorTheme1, ButtonType.mathEquation),
              buttonKeyboard(() {}, "4", mainColorTheme1, ButtonType.numbers),
              buttonKeyboard(() {}, "5", mainColorTheme1, ButtonType.numbers),
              buttonKeyboard(() {}, "6", mainColorTheme1, ButtonType.numbers),
              buttonKeyboard(
                  () {}, "-", mainColorTheme1, ButtonType.mathEquation),
              buttonKeyboard(() {}, "1", mainColorTheme1, ButtonType.numbers),
              buttonKeyboard(() {}, "2", mainColorTheme1, ButtonType.numbers),
              buttonKeyboard(() {}, "3", mainColorTheme1, ButtonType.numbers),
              buttonKeyboard(
                  () {}, "+", mainColorTheme1, ButtonType.mathEquation),
              buttonKeyboard(() {}, ",", mainColorTheme1, ButtonType.numbers),
              buttonKeyboard(() {}, "0", mainColorTheme1, ButtonType.numbers),
              buttonKeyboard(() {}, "()", mainColorTheme1, ButtonType.numbers),
              buttonKeyboard(() {}, "=", mainColorTheme1, ButtonType.numbers),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 5),
          height: widget.size.height * 0.042,
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage("assets/theme1/bg_bottom.png"),
            ),
          ),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () {
                showMaterialModalBottomSheet(
                  context: context,
                  builder: (context) => SingleChildScrollView(
                    controller: modalScrollController,
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        image: DecorationImage(
                          image: AssetImage("assets/theme1/bg_big.png"),
                          fit: BoxFit.fill,
                        ),
                      ),
                      height: widget.size.height * 0.59,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(
                                left: 5, right: 5, top: 10),
                            height: widget.size.height * 0.042,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image:
                                    AssetImage("assets/theme1/bg_bottom.png"),
                              ),
                            ),
                            child: Material(
                              color: Colors.transparent,
                              child: InkWell(
                                onTap: () {},
                                child: const Center(
                                  child: Image(
                                    height: 12,
                                    image:
                                        AssetImage("assets/common/ic_down.png"),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Flexible(
                            child: GridView.count(
                              padding: const EdgeInsets.only(top: 10),
                              physics: const NeverScrollableScrollPhysics(),
                              crossAxisCount: 4,
                              shrinkWrap: true,
                              childAspectRatio: 1.25,
                              mainAxisSpacing: 5,
                              crossAxisSpacing: 5,
                              children: [
                                buttonKeyboard(() {}, "RAD", mainColorTheme1,
                                    ButtonType.numbers),
                                buttonKeyboard(() {}, "sin", mainColorTheme1,
                                    ButtonType.numbers),
                                buttonKeyboard(() {}, "cos", mainColorTheme1,
                                    ButtonType.numbers),
                                buttonKeyboard(() {}, "tan", mainColorTheme1,
                                    ButtonType.numbers),
                                buttonKeyboard(() {}, "π", mainColorTheme1,
                                    ButtonType.numbers),
                                buttonKeyboard(() {}, "sinh", mainColorTheme1,
                                    ButtonType.numbers),
                                buttonKeyboard(() {}, "cosh", mainColorTheme1,
                                    ButtonType.numbers),
                                buttonKeyboard(() {}, "tanh", mainColorTheme1,
                                    ButtonType.numbers),
                                buttonKeyboard(() {}, "x⁻¹", mainColorTheme1,
                                    ButtonType.numbers),
                                buttonKeyboard(() {}, "x²", mainColorTheme1,
                                    ButtonType.numbers),
                                buttonKeyboard(() {}, "x³", mainColorTheme1,
                                    ButtonType.numbers),
                                buttonKeyboard(() {}, "exp", mainColorTheme1,
                                    ButtonType.numbers),
                                buttonKeyboard(() {}, "log", mainColorTheme1,
                                    ButtonType.numbers),
                                buttonKeyboard(() {}, "ln", mainColorTheme1,
                                    ButtonType.numbers),
                                buttonKeyboard(() {}, "e", mainColorTheme1,
                                    ButtonType.numbers),
                                buttonKeyboard(() {}, "eⁿ", mainColorTheme1,
                                    ButtonType.numbers),
                                buttonKeyboard(() {}, "|x|", mainColorTheme1,
                                    ButtonType.numbers),
                                buttonKeyboard(() {}, "√", mainColorTheme1,
                                    ButtonType.numbers),
                                buttonKeyboard(() {}, "∛", mainColorTheme1,
                                    ButtonType.numbers),
                                buttonKeyboard(() {}, "n", mainColorTheme1,
                                    ButtonType.numbers),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
              child: const Center(
                child: Image(
                  height: 12,
                  image: AssetImage("assets/common/ic_up.png"),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget buttonKeyboard(
      Function onClick, String title, Color textColor, ButtonType type) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: getButtonType(type), fit: BoxFit.fill),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(0),
          onTap: () {
            onClick;
          },
          child: Center(
            child: Text(
              title,
              style: TextStyle(
                fontSize: 32,
                color: textColor,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ),
    );
  }

  AssetImage getButtonType(ButtonType buttonType) {
    String image = "assets/theme1/button_number.png";
    if (buttonType == ButtonType.mathEquation) {
      image = "assets/theme1/bg_button.png";
    }
    return AssetImage(image);
  }

  @override
  void dispose() {
    super.dispose();
    _textEditingControllerTop.dispose();
    _textEditingControllerBottom.dispose();
  }
}
