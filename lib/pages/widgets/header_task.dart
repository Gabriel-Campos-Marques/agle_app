import 'package:agle_app/utils/constants.dart';
import 'package:flutter/material.dart';

class HeaderTask extends StatelessWidget {
  const HeaderTask({
    super.key,
    required this.textEditintControllerTitle,
  });

  final TextEditingController textEditintControllerTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: primaryColor,
            width: 4,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            textAlignVertical: TextAlignVertical.center,
            controller: textEditintControllerTitle,
            cursorColor: textColorPrimary,
            decoration: const InputDecoration(
              border: InputBorder.none,
            ),
            style: TextStyle(
              color: textColorPrimary,
              fontSize: 30,
            ),
          ),
        ),
      ),
    );
  }
}
