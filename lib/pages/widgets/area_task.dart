import 'package:agle_app/utils/constants.dart';
import 'package:flutter/material.dart';

class AreaTask extends StatelessWidget {
  const AreaTask({
    super.key,
    required this.area,
  });

  final String area;

  @override
  Widget build(BuildContext context) {
    return Text(
      area,
      style: TextStyle(
        color: textColorPrimary,
        fontSize: 14,
      ),
    );
  }
}
