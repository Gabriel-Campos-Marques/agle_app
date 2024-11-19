import 'package:agle_app/controllers/items_header_column_controller.dart';
import 'package:agle_app/controllers/tasks_controller.dart';
import 'package:agle_app/models/item_header_column.dart';
import 'package:agle_app/pages/widgets/header_table_agle.dart';
import 'package:agle_app/pages/widgets/item_table_agle.dart';
import 'package:agle_app/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TableAgle extends StatelessWidget {
  const TableAgle({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer2<ItemsHeaderColumnController, TasksController>(
      builder: (context, headerList, taskList, child) {
        final sortedHeaders = List<ItemHeaderColumn>.from(headerList.headers)
          ..sort((a, b) => a.indexHeader.compareTo(b.indexHeader));

        return Container(
          margin: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: primaryColor,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              HeaderTableAgle(headers: sortedHeaders),
              Expanded(
                child: ListView.builder(
                  itemCount: taskList.tasks.length,
                  itemBuilder: (context, index) {
                    return ItemTableAgle(
                      headers: sortedHeaders,
                      task: taskList.tasks[index],
                    );
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
