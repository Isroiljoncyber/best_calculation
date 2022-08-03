import 'package:best_calculation/utils/constants.dart';
import 'package:flutter/material.dart';

class SettingTab extends StatefulWidget {
  const SettingTab({Key? key}) : super(key: key);

  @override
  State<SettingTab> createState() => _SettingTabState();
}

class _SettingTabState extends State<SettingTab> {
  late TextEditingController _textEditingController;

  @override
  void initState() {
    _textEditingController = TextEditingController();
    _textEditingController.text = "Best Calculation";
    _textEditingController.addListener(() {});
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  style: const TextStyle(fontSize: 20),
                  controller: _textEditingController,
                  decoration: const InputDecoration(
                      labelStyle: TextStyle(fontSize: 14),
                      labelText: "Enter your text",
                      border: OutlineInputBorder()),
                ),
              ),
              const SizedBox(
                width: 30,
              ),
              MaterialButton(
                onPressed: () {},
                color: Colors.blueGrey,
                child: const Text(
                  "OK",
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                  text: const TextSpan(
                    text: "Minimum accuracy",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black87,
                        fontWeight: FontWeight.w400),
                    children: [
                      TextSpan(
                        text: "\nLimit minimum accuracy to 2 digits",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  ),
                ),
                Switch(value: false, onChanged: (value) => {}),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                  text: const TextSpan(
                    text: "Swipe to count",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black87,
                        fontWeight: FontWeight.w400),
                    children: [
                      TextSpan(
                        text: "\nSwipe down the keyboard to calculate",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  ),
                ),
                Switch(value: false, onChanged: (value) => {}),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                  text: const TextSpan(
                    text: "Disable text animation",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black87,
                        fontWeight: FontWeight.w400),
                    children: [
                      TextSpan(
                        text: "\nTurn off text animation in the main screen",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  ),
                ),
                Switch(value: false, onChanged: (value) => {}),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                  text: const TextSpan(
                    text: "Leave the screen on",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black87,
                        fontWeight: FontWeight.w400),
                    children: [
                      TextSpan(
                        text:
                            "\nDisable sleep mode while the application is running",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  ),
                ),
                Switch(value: false, onChanged: (value) => {}),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                  text: const TextSpan(
                    text: "Turn the vibration off",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black87,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                Switch(value: false, onChanged: (value) => {}),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                  text: const TextSpan(
                    text: "Hide status bar",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black87,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                Switch(value: false, onChanged: (value) => {}),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Center(
              child: TextButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.info_rounded),
                label: const Text(
                  "About",
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }
}
