import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

import '../../utils/constants.dart';
import '../../utils/enums.dart';
import '../mainPage/calculator.dart';

Widget measurementTop(Size size, Map<String, Map<String, double>> value,
    Function callback, BuildContext context) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 10),
    height: size.height * 0.2,
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Directionality(
          textDirection: TextDirection.rtl,
          child: TextButton.icon(
            onPressed: () => callback(),
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
            enabled: true,
            keyboardType: TextInputType.none,
            onTap: () {
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
                    height: size.height * 0.62,
                    child: Flexible(
                      child: GridView.count(
                        padding: const EdgeInsets.only(top: 10),
                        physics: const NeverScrollableScrollPhysics(),
                        crossAxisCount: 4,
                        shrinkWrap: true,
                        childAspectRatio: 0.83,
                        mainAxisSpacing: 5,
                        crossAxisSpacing: 5,
                        children: [
                          buttonKeyboard(
                              () {}, "7", mainColorTheme1, ButtonType.numbers),
                          buttonKeyboard(
                              () {}, "8", mainColorTheme1, ButtonType.numbers),
                          buttonKeyboard(
                              () {}, "9", mainColorTheme1, ButtonType.numbers),
                          buttonKeyboard(
                              () {}, "⌫", mainColorTheme1, ButtonType.numbers),
                          buttonKeyboard(
                              () {}, "4", mainColorTheme1, ButtonType.numbers),
                          buttonKeyboard(
                              () {}, "5", mainColorTheme1, ButtonType.numbers),
                          buttonKeyboard(
                              () {}, "6", mainColorTheme1, ButtonType.numbers),
                          buttonKeyboard(
                              () {}, "C", mainColorTheme1, ButtonType.numbers),
                          buttonKeyboard(
                              () {}, "1", mainColorTheme1, ButtonType.numbers),
                          buttonKeyboard(
                              () {}, "2", mainColorTheme1, ButtonType.numbers),
                          buttonKeyboard(
                              () {}, "3", mainColorTheme1, ButtonType.numbers),
                          buttonKeyboard(
                              () {}, "ok", mainColorTheme1, ButtonType.numbers),
                          buttonKeyboard(
                              () {}, ",", mainColorTheme1, ButtonType.numbers),
                          buttonKeyboard(
                              () {}, "0", mainColorTheme1, ButtonType.numbers),
                          buttonKeyboard(
                              () {}, "00", mainColorTheme1, ButtonType.numbers),
                          buttonKeyboard(
                              () {}, "=>", mainColorTheme1, ButtonType.numbers),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
            textAlign: TextAlign.end,
            decoration: const InputDecoration(border: InputBorder.none),
            style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w500,
                color: mainColorTheme1),
          ),
        ),
      ],
    ),
  );
}

Widget measurementListItem(
  int index,
  Map<String, Map<String, double>> value,
  Function callback,
) {
  return GestureDetector(
    onTap: () => callback(),
    child: Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      height: 70,
      decoration: BoxDecoration(
        color: index.isOdd ? Colors.transparent : Color(0x2A1400FF),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          RichText(
            textAlign: TextAlign.start,
            text: TextSpan(
              text: value.keys.toList()[index],
              style: TextStyle(
                  color: mainColorTheme1,
                  fontWeight: FontWeight.w400,
                  fontSize: 12),
              children: <TextSpan>[
                TextSpan(
                    text: "\n\n${value.values.toList()[index].keys.first}",
                    style: TextStyle(
                        color: mainColorTheme1,
                        fontWeight: FontWeight.w400,
                        fontSize: 20)),
              ],
            ),
          ),
          Text(
            "${value.values.toList()[index].values.first}",
            style: TextStyle(color: mainColorTheme1, fontSize: 22),
          ),
        ],
      ),
    ),
  );
}

Widget measurementEmptyListItem(
    int index, Map<String, Map<String, double>> value, Function callback,
    {isValuable = false}) {
  return GestureDetector(
    onTap: () => callback(),
    child: Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      height: 70,
      decoration: BoxDecoration(
        color: index.isOdd ? Colors.transparent : Color(0x2A1400FF),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          RichText(
            textAlign: TextAlign.start,
            text: TextSpan(
              text: value.keys.toList()[index],
              style: TextStyle(
                  color: mainColorTheme1,
                  fontWeight: FontWeight.w400,
                  fontSize: 12),
              children: <TextSpan>[
                TextSpan(
                    text: "\n\n${value.values.toList()[index].keys.first}",
                    style: TextStyle(
                        color: mainColorTheme1,
                        fontWeight: FontWeight.w400,
                        fontSize: 20)),
              ],
            ),
          ),
          Visibility(
            visible: isValuable,
            child: const Image(
              image: AssetImage("assets/common/ic_check.png"),
              height: 30,
            ),
          )
        ],
      ),
    ),
  );
}
