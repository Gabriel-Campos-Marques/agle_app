import 'package:flutter/material.dart';

class DrawerAgle extends StatefulWidget {
  const DrawerAgle({super.key});

  @override
  State<DrawerAgle> createState() => _DrawerAgleState();
}

class _DrawerAgleState extends State<DrawerAgle> {
  double menuBarWidth = 300;

  void _expandedMenuBar() {
    setState(() {
      if (menuBarWidth == 300) {
        menuBarWidth = 56;
      } else {
        menuBarWidth = 300;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      decoration: BoxDecoration(
        border: Border(
          right: BorderSide(
            color: Theme.of(context).colorScheme.primary,
            width: 3,
          ),
        ),
      ),
      width: menuBarWidth,
      child: Column(
        children: [
          menuBarWidth == 300
              ? Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                        onTap: _expandedMenuBar,
                        child: Icon(
                          Icons.keyboard_double_arrow_left_rounded,
                          size: 32,
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                      ),
                    ],
                  ),
                )
              : Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                        onTap: _expandedMenuBar,
                        child: Icon(
                          Icons.keyboard_double_arrow_right_rounded,
                          size: 32,
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                      ),
                    ],
                  ),
                ),
        ],
      ),
    );
  }
}
