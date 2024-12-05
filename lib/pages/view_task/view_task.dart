import 'package:agle_app/controllers/areas_controller.dart';
import 'package:agle_app/controllers/tasks_controller.dart';
import 'package:agle_app/models/tasks.dart';
import 'package:agle_app/pages/widgets/button_agle.dart';
import 'package:agle_app/pages/widgets/header_task.dart';
import 'package:agle_app/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class ViewTask extends StatelessWidget {
  ViewTask({super.key, required this.task});

  final Tasks task;

  final TextEditingController textEditintControllerTitle =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    textEditintControllerTitle.text = task.title;
    return Dialog(
      child: Container(
        height: double.maxFinite * .8,
        width: double.maxFinite * .8,
        decoration: BoxDecoration(
          color: secondColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            Consumer<TasksController>(
              builder: (context, TasksController list, child) {
                return Padding(
                  padding: const EdgeInsets.only(top: 8.0, right: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ButtonAgle(
                        textButton: 'Salvar tarefa',
                        function: () {
                          task.title = textEditintControllerTitle.text;
                          list.updateTask(task);
                          Navigator.pop(context);
                        },
                      ),
                    ],
                  ),
                );
              },
            ),
            HeaderTask(textEditintControllerTitle: textEditintControllerTitle),
            PropertiesTask(
              task: task,
              icon: FontAwesomeIcons.spinner,
              titleProperty: 'Status',
            ),
            PropertiesTask(
              task: task,
              icon: Icons.workspaces,
              titleProperty: 'Área',
            ),
          ],
        ),
      ),
    );
  }
}

class PropertiesTask extends StatefulWidget {
  const PropertiesTask({
    super.key,
    required this.task,
    required this.icon,
    required this.titleProperty,
  });

  final Tasks task;
  final IconData icon;
  final String titleProperty;

  @override
  State<PropertiesTask> createState() => _PropertiesTaskState();
}

class _PropertiesTaskState extends State<PropertiesTask> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16),
            child: Container(
              width: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: primaryColor, width: 3),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Icon(
                      widget.icon,
                      size: 20,
                      color: textColorPrimary,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      widget.titleProperty,
                      style: TextStyle(
                        color: textColorPrimary,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Consumer<AreasController>(
                      builder: (context, AreasController areas, child) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton<String>(
                              style: TextStyle(
                                  color: textColorPrimary, fontSize: 20),
                              icon: const Icon(null),
                              value: widget.task.area,
                              hint: Text(
                                'Selecione uma área',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: textColorPrimary, fontSize: 14),
                              ),
                              isExpanded: true,
                              items: areas.areas.map((area) {
                                return DropdownMenuItem<String>(
                                  value: area.nameArea,
                                  child: Text(area.nameArea),
                                );
                              }).toList(),
                              onChanged: (value) {
                                setState(() {
                                  widget.task.area = value!;
                                });
                              },
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
