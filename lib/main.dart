import 'package:agle_app/controllers/areas_controller.dart';
import 'package:agle_app/controllers/items_menu_bar_controller.dart';
import 'package:agle_app/controllers/pages_controller.dart';
import 'package:agle_app/controllers/projects_controller.dart';
import 'package:agle_app/controllers/status_task_controller.dart';
import 'package:agle_app/controllers/tasks_controller.dart';
import 'package:agle_app/controllers/type_task_controller.dart';
import 'package:agle_app/controllers/users.controller.dart';
import 'package:agle_app/models/areas.dart';
import 'package:agle_app/models/item_menu_bar.dart';
import 'package:agle_app/models/projects.dart';
import 'package:agle_app/models/status_task.dart';
import 'package:agle_app/models/tasks.dart';
import 'package:agle_app/models/user.dart';
import 'package:agle_app/pages/login/login_page.dart';
import 'package:agle_app/theme/theme.dart';
import 'package:agle_app/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => UsersController(users: [
            User(name: 'Gabriel Campos Marques', id: 1, image: bytesGabriel),
            User(name: 'Luiz Fernando', id: 2, image: bytesLuiz),
            User(name: 'Elton Ziviane', id: 3, image: bytesElton),
            User(name: 'André Vitor', id: 4, image: bytesAndre),
          ]),
        ),
        ChangeNotifierProvider(
          create: (context) => ProjectsController(projects: [
            Projects(
              nameProject: 'Pessoal',
              idProject: 1,
              image: bytesPessoal,
            ),
            Projects(
              nameProject: 'Trabalho',
              idProject: 2,
              image: bytesTrabalho,
            ),
            Projects(
              nameProject: 'Projeto Integrador',
              idProject: 3,
              image: bytesProjetoIntegrador,
            ),
            Projects(
              nameProject: 'Faculdade',
              idProject: 4,
              image: bytesFaculdade,
            ),
          ]),
        ),
        ChangeNotifierProvider(
          create: (context) => AreasController(areas: [
            Areas(nameArea: 'Parte escrita', index: 0),
            Areas(nameArea: 'Desenvolvimento', index: 1),
            Areas(nameArea: 'Custos', index: 2),
          ]),
        ),
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
                icon: Icons.all_inbox,
                label: 'Caixa de entrada',
                index: 1,
                selected: false,
                isPageMenu: false,
                isSubMenu: false,
              ),
              ItemMenuBar(
                icon: Icons.checklist,
                label: 'Tarefas do projeto',
                index: 2,
                selected: false,
                isPageMenu: false,
                isSubMenu: false,
              ),
              ItemMenuBar(
                icon: Icons.sticky_note_2,
                label: 'Anotações do projeto',
                index: 3,
                selected: false,
                isPageMenu: false,
                isSubMenu: false,
              ),
              ItemMenuBar(
                icon: Icons.workspaces,
                label: 'Áreas',
                index: 4,
                selected: false,
                isPageMenu: true,
                isSubMenu: true,
              ),
            ],
          ),
        ),
        ChangeNotifierProvider(create: (context) => PagesController()),
        ChangeNotifierProvider(create: (context) => TypeTaskController()),
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
                pictureResponsible: bytesGabriel,
                priorityColor: priorityHigh,
                priorityIcon: Icons.keyboard_double_arrow_down,
                iconCheckBox: Icons.check_box_outline_blank_rounded,
              ),
              Tasks(
                code: 'AI-247',
                title: 'Como resolver outro problema?',
                area: 'Estudos',
                priority: 5,
                status: 'Em aberto',
                dateCreate: DateTime.now(),
                deliveryDate: DateTime.now(),
                responsible: 'Gabriel Campos Marques',
                pictureResponsible: bytesGabriel,
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
      home: const LoginPage(),
    );
  }
}
