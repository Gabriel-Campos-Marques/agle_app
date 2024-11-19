import 'package:agle_app/models/tasks.dart';
import 'package:flutter/material.dart';

class TasksController extends ChangeNotifier {
  List<Tasks> tasks;
  TasksController({
    required this.tasks,
  });

  void updateTaskStatus(Tasks task, String newStatus) {
    final taskIndex = tasks.indexWhere((t) => t.code == task.code);

    if (taskIndex != -1) {
      tasks[taskIndex].status = newStatus;

      notifyListeners();
    }
  }
}
