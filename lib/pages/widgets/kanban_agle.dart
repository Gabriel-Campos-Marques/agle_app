import 'package:agle_app/controllers/status_task_controller.dart';
import 'package:agle_app/controllers/tasks_controller.dart';
import 'package:agle_app/models/tasks.dart';
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

class CardTask extends StatelessWidget {
  const CardTask({
    super.key,
    required this.task,
  });

  final Tasks task;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      width: 350,
      height: 192,
      decoration: BoxDecoration(
        color: secondColor,
        boxShadow: const [
          BoxShadow(
            blurRadius: 4,
            color: Color.fromARGB(15, 176, 100, 100),
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 4.0, left: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      task.title,
                      style: TextStyle(
                        color: textColorPrimary,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      task.area,
                      style: TextStyle(
                        color: textColorPrimary,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Icon(
                  task.priorityIcon,
                  size: 28,
                  color: task.priorityColor,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Prazo',
                  style: TextStyle(
                    fontSize: 12,
                    color: textColorPrimary,
                  ),
                ),
                Text(
                  task.dateCreate.toString(),
                  style: TextStyle(
                    fontSize: 12,
                    color: textColorPrimary,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: 35,
                          width: 35,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: Image.memory(
                            task.pictureResponsible,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Text(
                          task.responsible,
                          style: TextStyle(
                            fontSize: 14,
                            color: textColorPrimary,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      task.code,
                      style: TextStyle(
                        fontSize: 14,
                        color: textColorPrimary,
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
