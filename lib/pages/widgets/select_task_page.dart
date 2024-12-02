import 'package:agle_app/controllers/type_task_controller.dart';
import 'package:agle_app/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SelectTaskPage extends StatelessWidget {
  const SelectTaskPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<TypeTaskController>(
      builder:
          (BuildContext context, TypeTaskController typeTask, Widget? child) {
        return Row(
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: typeTask.currentTypeTaskIndex == 1
                    ? Border.all(
                        width: 4,
                        color: textColorPrimary,
                      )
                    : null,
              ),
              child: IconButton(
                padding: EdgeInsets.zero,
                icon: Icon(
                  Icons.view_kanban,
                  size: 40,
                  color: textColorPrimary,
                ),
                onPressed: () {
                  typeTask.setCurrentPage(1);
                },
              ),
            ),
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: typeTask.currentTypeTaskIndex == 0
                    ? Border.all(
                        width: 4,
                        color: textColorPrimary,
                      )
                    : null,
              ),
              child: IconButton(
                padding: EdgeInsets.zero,
                onPressed: () {
                  typeTask.setCurrentPage(0);
                },
                icon: Icon(
                  Icons.reorder_rounded,
                  color: textColorPrimary,
                  size: 40,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
