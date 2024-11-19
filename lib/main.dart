import 'package:agle_app/controllers/items_header_column_controller.dart';
import 'package:agle_app/controllers/items_menu_bar_controller.dart';
import 'package:agle_app/controllers/pages_controller.dart';
import 'package:agle_app/controllers/status_task_controller.dart';
import 'package:agle_app/controllers/tasks_controller.dart';
import 'package:agle_app/models/item_header_column.dart';
import 'package:agle_app/models/item_menu_bar.dart';
import 'package:agle_app/models/status_task.dart';
import 'package:agle_app/models/tasks.dart';
import 'package:agle_app/pages/homePage/home_page.dart';
import 'package:agle_app/theme/theme.dart';
import 'package:agle_app/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ItemsMenuBarController(
            items: [
              ItemMenuBar(
                icon: Icons.dashboard,
                label: 'DashBoard',
                index: 0,
                selected: true,
                isPageMenu: false,
                isSubMenu: false,
              ),
              ItemMenuBar(
                icon: Icons.checklist,
                label: 'Tarefas',
                index: 1,
                selected: false,
                isPageMenu: false,
                isSubMenu: false,
              ),
            ],
          ),
        ),
        ChangeNotifierProvider(create: (context) => PagesController()),
        ChangeNotifierProvider(
          create: (context) => ItemsHeaderColumnController(
            headers: [
              ItemHeaderColumn(
                nameColumn: 'Checkbox',
                widthColumn: 50,
                indexHeader: 0,
              ),
              ItemHeaderColumn(
                nameColumn: 'Título',
                widthColumn: 150,
                indexHeader: 1,
              ),
              ItemHeaderColumn(
                nameColumn: 'Área',
                widthColumn: 200,
                indexHeader: 2,
              ),
              ItemHeaderColumn(
                nameColumn: 'Prioridade',
                widthColumn: 100,
                indexHeader: 3,
              ),
              ItemHeaderColumn(
                nameColumn: 'Status',
                widthColumn: 100,
                indexHeader: 4,
              ),
              ItemHeaderColumn(
                nameColumn: 'Data criação',
                widthColumn: 100,
                indexHeader: 5,
              ),
              ItemHeaderColumn(
                nameColumn: 'Responsável',
                widthColumn: 100,
                indexHeader: 6,
              ),
            ],
          ),
        ),
        ChangeNotifierProvider(
          create: (context) => TasksController(
            tasks: [
              Tasks(
                code: 'AI-246',
                title: 'Como resolver?',
                area: 'Desenvolvimento',
                priority: 5,
                status: 'Em andamento',
                dateCreate: DateTime.now(),
                deliveryDate: DateTime.now(),
                responsible: 'Gabriel Campos Marques',
                pictureResponsible: bytes,
                priorityColor: priorityHigh,
                priorityIcon: Icons.keyboard_double_arrow_down,
                iconCheckBox: Icons.check_box_outline_blank_rounded,
              ),
            ],
          ),
        ),
        ChangeNotifierProvider(
          create: (context) => StatusTaskController(
            status: [
              StatusTask(name: 'Em aberto', position: 0),
              StatusTask(name: 'Em andamento', position: 1),
              StatusTask(name: 'Em pausa', position: 2),
              StatusTask(name: 'Concluído', position: 3),
            ],
          ),
        )
      ],
      child: const AgleAPP(),
    ),
  );
}

class AgleAPP extends StatelessWidget {
  const AgleAPP({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Agle',
      theme: themeApp,
      home: const HomePage(),
    );
  }
}
