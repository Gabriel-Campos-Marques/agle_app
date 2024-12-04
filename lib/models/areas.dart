import 'package:flutter/material.dart';

class Areas {
  String nameArea;
  int index;
  IconData? icon;
  bool selected = false;
  Areas({
    required this.nameArea,
    required this.index,
    this.icon,
    this.selected = false,
  });
}
