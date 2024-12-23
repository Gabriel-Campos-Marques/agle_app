import 'package:flutter/material.dart';

import '../models/item_menu_bar.dart';

class ItemsMenuBarController extends ChangeNotifier {
  List<ItemMenuBar> items;

  ItemsMenuBarController({
    required this.items,
  });

  void alterSelectedMenuBar({required int index}) {
    for (var item in items) {
      if (item.index == index && item.index != 4) {
        item.selected = true;
      } else {
        item.selected = false;
      }
    }
    if (index == 4) {
      items[index].iconAreaClick = !items[index].iconAreaClick;
    }
    notifyListeners();
  }
}
