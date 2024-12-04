import 'package:flutter/material.dart';

class ItemMenuBar {
  IconData icon;
  String label;
  bool selected = false;
  bool isSubMenu = false;
  bool isPageMenu = false;
  bool iconAreaClick;
  int index;

  ItemMenuBar(
      {required this.icon,
      required this.label,
      required this.index,
      required this.selected,
      required this.isSubMenu,
      required this.isPageMenu,
      this.iconAreaClick = false});
}
