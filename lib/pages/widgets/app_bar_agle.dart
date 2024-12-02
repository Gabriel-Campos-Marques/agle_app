import 'package:agle_app/utils/constants.dart';
import 'package:flutter/material.dart';

class AppBarAgle extends StatelessWidget {
  const AppBarAgle({
    super.key,
    this.title,
  });

  final String? title;

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
        title == null ? 'Projeto Integrador' : title!,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 30,
          color: textColorPrimary,
        ),
      ),
    );
  }
}
