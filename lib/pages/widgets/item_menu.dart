import 'package:agle_app/utils/constants.dart';
import 'package:flutter/material.dart';

class ItemMenu extends StatelessWidget {
  final IconData iconMenuBar;
  final String nameItemMenuBar;
  final bool subMenu;
  final bool pageItem;
  final bool selected;
  final bool iconAreaClick;

  const ItemMenu({
    super.key,
    required this.iconMenuBar,
    required this.nameItemMenuBar,
    this.subMenu = false,
    this.pageItem = false,
    this.selected = false,
    this.iconAreaClick = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: selected ? primaryColor : backGroudColor,
        border: subMenu || pageItem
            ? Border.all(color: primaryColor, width: 3)
            : null,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              iconMenuBar,
              color: textColorPrimary,
              size: 40,
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  nameItemMenuBar,
                  style: TextStyle(
                    color: textColorPrimary,
                    fontSize: 30,
                  ),
                ),
                subMenu
                    ? Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: !iconAreaClick
                            ? Icon(
                                Icons.keyboard_arrow_down,
                                color: textColorPrimary,
                                size: 40,
                              )
                            : Icon(
                                Icons.keyboard_arrow_up,
                                color: textColorPrimary,
                                size: 40,
                              ))
                    : const SizedBox()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
