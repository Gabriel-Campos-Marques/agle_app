import 'package:agle_app/utils/constants.dart';
import 'package:flutter/material.dart';

class HeaderColumnAgle extends StatelessWidget {
  const HeaderColumnAgle({
    super.key,
    required this.sizeColumn,
    required this.nameHeader,
  });

  final double sizeColumn;
  final String nameHeader;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: sizeColumn,
        child: Center(
          child: Text(
            nameHeader,
            style: TextStyle(
              color: textColorPrimary,
              fontSize: 14,
            ),
          ),
        ),
      ),
    );
  }
}
