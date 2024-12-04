import 'package:agle_app/controllers/status_task_controller.dart';
import 'package:agle_app/controllers/tasks_controller.dart';
import 'package:agle_app/models/tasks.dart';
import 'package:agle_app/pages/widgets/card_task.dart';
import 'package:agle_app/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class KanbanAgle extends StatelessWidget {
  KanbanAgle({super.key});

  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        margin: const EdgeInsets.all(8),
        child: Consumer2<StatusTaskController, TasksController>(
          builder: (context, listStatus, listTask, child) {
            return Scrollbar(
              scrollbarOrientation: ScrollbarOrientation.bottom,
              thumbVisibility: true,
              controller: _scrollController,
              child: ListView.builder(
                controller: _scrollController,
                scrollDirection: Axis.horizontal,
                itemCount: listStatus.status.length,
                itemBuilder: (context, index) {
                  String statusColumn = listStatus.status[index].name;
                  List<Tasks> filterTask = listTask.tasks
                      .where((task) => task.status == statusColumn)
                      .toList();

                  return ColumnKanbanAgle(
                    title: listStatus.status[index].name,
                    tasks: filterTask,
                    status: statusColumn,
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}

class ColumnKanbanAgle extends StatelessWidget {
  const ColumnKanbanAgle({
    super.key,
    required this.title,
    required this.tasks,
    required this.status,
  });

  final String title;
  final List<Tasks> tasks;
  final String status;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      height: double.maxFinite,
      width: 350,
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              title,
              textAlign: TextAlign.start,
              style: TextStyle(
                color: textColorPrimary,
                fontSize: 18,
              ),
            ),
          ),
          Expanded(
            child: DragTarget<Tasks>(
              onAcceptWithDetails: (task) {
                Provider.of<TasksController>(context, listen: false)
                    .updateTaskStatus(task.data, status);
              },
              builder: (context, candidateData, rejectedData) {
                return ListView.builder(
                  itemCount: tasks.length,
                  itemBuilder: (context, index) {
                    return CardTaskDraggable(
                      task: tasks[index],
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class CardTaskDraggable extends StatelessWidget {
  const CardTaskDraggable({
    super.key,
    required this.task,
  });

  final Tasks task;

  @override
  Widget build(BuildContext context) {
    return Draggable<Tasks>(
      data: task,
      feedback: Material(
        elevation: 10,
        child: CardTask(
          task: task,
        ),
      ),
      childWhenDragging: Container(),
      child: CardTask(
        task: task,
      ),
    );
  }
}
