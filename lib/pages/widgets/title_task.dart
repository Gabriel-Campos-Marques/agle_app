import 'package:agle_app/utils/constants.dart';
import 'package:flutter/material.dart';

class TitleTask extends StatelessWidget {
  const TitleTask({
    super.key,
    required this.titleTask,
  });

  final String titleTask;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Text(
        titleTask,
        style: TextStyle(
          color: textColorPrimary,
          fontSize: 14,
        ),
      ),
    );
  }
}
