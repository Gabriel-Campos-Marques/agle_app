import 'package:agle_app/controllers/type_task_controller.dart';
import 'package:agle_app/pages/widgets/button_agle.dart';
import 'package:agle_app/pages/widgets/search_agle.dart';
import 'package:agle_app/pages/widgets/select_task_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widgets/app_bar_agle.dart';

class TaskPage extends StatelessWidget {
  const TaskPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        color: Colors.white,
        child: Column(
          children: [
            const AppBarAgle(),
            Expanded(
              child: SizedBox(
                width: double.maxFinite,
                height: double.maxFinite,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Row(
                          children: [
                            SearchAgle(),
                            SelectTaskPage(),
                          ],
                        ),
                        ButtonAgle(
                          textButton: 'Nova Tarefa',
                          function: () {},
                        )
                      ],
                    ),
                    Consumer<TypeTaskController>(
                      builder: (context, typeTask, child) {
                        return Expanded(
                          child: typeTask.currentTypeTask,
                        );
                      },
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
