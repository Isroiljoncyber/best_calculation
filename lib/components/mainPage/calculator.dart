import 'package:flutter/material.dart';
import '../../utils/enums.dart';

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
