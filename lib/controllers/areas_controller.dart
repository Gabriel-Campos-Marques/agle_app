import 'package:agle_app/models/areas.dart';
import 'package:flutter/material.dart';

class AreasController extends ChangeNotifier {
  List<Areas> areas;
  AreasController({
    required this.areas,
  });

  void alterSelectedMenuBar({required int index}) {
    for (var item in areas) {
      if (item.index == index) {
        item.selected = true;
      } else {
        item.selected = false;
      }
    }
    notifyListeners();
  }
}
