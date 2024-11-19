import 'package:agle_app/utils/constants.dart';
import 'package:flutter/material.dart';

class SelectTaskPage extends StatelessWidget {
  const SelectTaskPage({
    super.key,
    required this.selectedList,
    required this.selectedKanban,
  });

  final bool selectedList;
  final bool selectedKanban;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: selectedKanban
                ? Border.all(
                    width: 4,
                    color: textColorPrimary,
                  )
                : null,
          ),
          child: Center(
            child: Icon(
              Icons.view_kanban,
              color: textColorPrimary,
              size: 40,
            ),
          ),
        ),
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: selectedList
                ? Border.all(
                    width: 4,
                    color: textColorPrimary,
                  )
                : null,
          ),
          child: Center(
            child: Icon(
              Icons.reorder_rounded,
              color: textColorPrimary,
              size: 40,
            ),
          ),
        ),
      ],
    );
  }
}
