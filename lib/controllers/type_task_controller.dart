import 'package:agle_app/models/type_tasks.dart';
import 'package:agle_app/pages/widgets/kanban_agle.dart';
import 'package:agle_app/pages/widgets/table_agle.dart';
import 'package:flutter/material.dart';

class TypeTaskController extends ChangeNotifier {
  List<TypeTasks> typeTasks = [
    TypeTasks(
      typeTask: const TableAgle(),
      index: 0,
    ),
    TypeTasks(
      typeTask: KanbanAgle(),
      index: 1,
    )
  ];

  int _currentTypeTaskIndex = 1;

  int get currentTypeTaskIndex => _currentTypeTaskIndex;

  void setCurrentPage(int index) {
    if (index >= 0 && index < typeTasks.length) {
      _currentTypeTaskIndex = index;
      notifyListeners();
    }
  }

  Widget get currentTypeTask => typeTasks[_currentTypeTaskIndex].typeTask;
}
