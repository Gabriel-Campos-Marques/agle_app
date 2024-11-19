import 'package:agle_app/utils/constants.dart';
import 'package:flutter/material.dart';

class AppBarAgle extends StatelessWidget {
  final String title;

  const AppBarAgle({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      width: double.maxFinite,
      height: 50,
      decoration: BoxDecoration(
        color: secondColor,
        border: Border.all(width: 3, color: primaryColor),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        title.toUpperCase(),
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 30,
          color: textColorPrimary,
        ),
      ),
    );
  }
}
