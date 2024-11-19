import 'package:agle_app/pages/widgets/button_agle.dart';
import 'package:agle_app/pages/widgets/kanban_agle.dart';
import 'package:agle_app/pages/widgets/search_agle.dart';
import 'package:agle_app/pages/widgets/select_task_page.dart';
import 'package:flutter/material.dart';

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
            const AppBarAgle(
              title: 'Projeto integrador',
            ),
            Expanded(
              child: SizedBox(
                width: double.maxFinite,
                height: double.maxFinite,
                child: Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SearchAgle(),
                            SelectTaskPage(
                              selectedKanban: true,
                              selectedList: false,
                            ),
                          ],
                        ),
                        ButtonAgle(
                          textButton: 'Nova Tarefa',
                        )
                      ],
                    ),
                    Expanded(
                      child: KanbanAgle(),
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
