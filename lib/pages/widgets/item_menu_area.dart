import 'package:agle_app/utils/constants.dart';
import 'package:flutter/material.dart';

class ItemMenuArea extends StatelessWidget {
  final String nameItemMenuAreaBar;
  final bool selected;

  const ItemMenuArea({
    super.key,
    required this.nameItemMenuAreaBar,
    this.selected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: selected ? primaryColor : backGroudColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Expanded(
        child: Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Text(
            nameItemMenuAreaBar,
            style: TextStyle(
              color: textColorPrimary,
              fontSize: 28,
            ),
          ),
        ),
      ),
    );
  }
}
