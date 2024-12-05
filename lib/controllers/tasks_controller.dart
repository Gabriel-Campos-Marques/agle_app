import 'package:agle_app/models/tasks.dart';
import 'package:agle_app/utils/constants.dart';
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

  void updateTask(Tasks task) {
    final taskIndex = tasks.indexWhere((t) => t.code == task.code);

    if (taskIndex != -1) {
      tasks[taskIndex] = task;

      notifyListeners();
    }
  }

  void addTask(Tasks task) {
    switch (task.responsible) {
      case 'Gabriel':
        task.pictureResponsible = bytesGabriel;
        break;
      case 'André':
        task.pictureResponsible = bytesAndre;
        break;
      case 'Luiz':
        task.pictureResponsible = bytesLuiz;
        break;
      case 'Elton':
        task.pictureResponsible = bytesElton;
        break;
      default:
    }

    tasks.add(Tasks(
      title: task.title,
      area: task.area,
      priority: task.priority,
      status: task.status,
      dateCreate: task.dateCreate,
      deliveryDate: task.deliveryDate,
      responsible: task.responsible,
      pictureResponsible: task.pictureResponsible,
      priorityColor: task.priorityColor,
      priorityIcon: task.priorityIcon,
      iconCheckBox: task.iconCheckBox,
      code: task.code,
      description: task.description,
      duration: task.duration,
    ));

    notifyListeners();
  }
}
