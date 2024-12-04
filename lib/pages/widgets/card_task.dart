import 'package:agle_app/models/tasks.dart';
import 'package:agle_app/utils/constants.dart';
import 'package:flutter/material.dart';

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
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0, right: 8),
                      child: ClipOval(
                        child: Image.memory(
                          height: 30,
                          width: 30,
                          task.pictureResponsible,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        textAlign: TextAlign.start,
                        task.responsible,
                        style: TextStyle(
                          fontSize: 14,
                          color: textColorPrimary,
                        ),
                      ),
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
