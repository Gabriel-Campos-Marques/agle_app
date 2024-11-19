import 'package:agle_app/utils/constants.dart';
import 'package:flutter/material.dart';

class ButtonAgle extends StatelessWidget {
  final String textButton;

  const ButtonAgle({
    super.key,
    required this.textButton,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(width: 3, color: primaryColor),
        ),
        width: 200,
        height: 45,
        child: Center(
          child: Text(
            textButton,
            style: TextStyle(
              color: textColorPrimary,
              fontSize: 20,
            ),
          ),
        ));
  }
}
