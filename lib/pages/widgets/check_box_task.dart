import 'package:agle_app/utils/constants.dart';
import 'package:flutter/material.dart';

class CheckBoxTask extends StatelessWidget {
  const CheckBoxTask({
    super.key,
    required this.iconCheckBox,
  });

  final IconData iconCheckBox;

  @override
  Widget build(BuildContext context) {
    return Icon(
      iconCheckBox,
      size: 25,
      color: checkBoxColor,
    );
  }
}
