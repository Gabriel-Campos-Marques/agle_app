import 'dart:typed_data';

import 'package:agle_app/controllers/users.controller.dart';
import 'package:agle_app/pages/new_note.dart';
import 'package:agle_app/pages/new_task.dart';
import 'package:agle_app/pages/widgets/app_bar_agle.dart';
import 'package:agle_app/pages/widgets/button_agle.dart';
import 'package:agle_app/pages/widgets/card_dash_board.dart';
import 'package:agle_app/utils/constants.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DashBoardPage extends StatefulWidget {
  const DashBoardPage({super.key});

  @override
  State<DashBoardPage> createState() => _DashBoardPageState();
}

class _DashBoardPageState extends State<DashBoardPage> {
  int touchedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.maxFinite,
      width: double.maxFinite,
      color: secondColor,
      child: Column(
        children: [
          const AppBarAgle(),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ButtonAgle(
                  textButton: 'Nova anotação',
                  function: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return const NewNote();
                      },
                    );
                  }),
              ButtonAgle(
                textButton: 'Nova tarefa',
                function: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return const NewTask();
                    },
                  );
                },
              ),
            ],
          ),
          const Row(
            children: [
              CardDashBoard(
                titleCard: 'Anotações por áreas',
              ),
              CardDashBoard(
                titleCard: 'Tarefas por áreas',
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 300,
                  margin: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      Text(
                        'Tarefas',
                        style: TextStyle(
                          color: textColorPrimary,
                          fontSize: 20,
                        ),
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                              height: 200,
                              width: 200,
                              child: PieChart(
                                PieChartData(
                                  sectionsSpace: 0,
                                  centerSpaceRadius: 30,
                                  pieTouchData: PieTouchData(
                                    touchCallback:
                                        (FlTouchEvent event, pieTouchResponse) {
                                      setState(
                                        () {
                                          if (!event
                                                  .isInterestedForInteractions ||
                                              pieTouchResponse == null ||
                                              pieTouchResponse.touchedSection ==
                                                  null) {
                                            touchedIndex = -1;
                                            return;
                                          }
                                          touchedIndex = pieTouchResponse
                                              .touchedSection!
                                              .touchedSectionIndex;
                                        },
                                      );
                                    },
                                  ),
                                  sections: showingSections(),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 400,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.square_rounded,
                                        color: Colors.purple,
                                        size: 50,
                                      ),
                                      Text(
                                        'Gabriel',
                                        style: TextStyle(
                                          color: textColorPrimary,
                                          fontSize: 18,
                                        ),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.square_rounded,
                                        color: Colors.blue,
                                        size: 50,
                                      ),
                                      Text(
                                        'Luiz',
                                        style: TextStyle(
                                          color: textColorPrimary,
                                          fontSize: 18,
                                        ),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.square_rounded,
                                        color: Colors.yellow,
                                        size: 50,
                                      ),
                                      Text(
                                        'Elton',
                                        style: TextStyle(
                                          color: textColorPrimary,
                                          fontSize: 18,
                                        ),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.square_rounded,
                                        color: Colors.green,
                                        size: 50,
                                      ),
                                      Text(
                                        'André',
                                        style: TextStyle(
                                          color: textColorPrimary,
                                          fontSize: 18,
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 310,
                  height: 300,
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Colaboradores',
                          style: TextStyle(
                            color: textColorPrimary,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      const Expanded(
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: ItemColaboradores(),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  List<PieChartSectionData> showingSections() {
    return List.generate(4, (i) {
      final isTouched = i == touchedIndex;
      final fontSize = isTouched ? 25.0 : 16.0;
      final radius = isTouched ? 60.0 : 50.0;
      const shadows = [Shadow(color: Colors.black, blurRadius: 2)];
      switch (i) {
        case 0:
          return PieChartSectionData(
            color: Colors.blue,
            value: 40,
            title: '40%',
            radius: radius,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: textColorThird,
              shadows: shadows,
            ),
          );
        case 1:
          return PieChartSectionData(
            color: Colors.yellow,
            value: 30,
            title: '30%',
            radius: radius,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: textColorThird,
              shadows: shadows,
            ),
          );
        case 2:
          return PieChartSectionData(
            color: Colors.purple,
            value: 15,
            title: '15%',
            radius: radius,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: textColorThird,
              shadows: shadows,
            ),
          );
        case 3:
          return PieChartSectionData(
            color: Colors.green,
            value: 15,
            title: '15%',
            radius: radius,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: textColorThird,
              shadows: shadows,
            ),
          );
        default:
          throw Error();
      }
    });
  }
}

class ItemColaboradores extends StatelessWidget {
  const ItemColaboradores({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<UsersController>(
      builder: (context, UsersController list, child) {
        return ListView.builder(
          itemCount: list.users.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.fromLTRB(1, 4, 1, 4),
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: secondColor,
                    borderRadius: BorderRadius.circular(10)),
                child: Colaboradores(
                  image: list.users[index].image,
                  nameUser: list.users[index].name,
                  numberNotes: 150,
                  numberTask: 150,
                ),
              ),
            );
          },
        );
      },
    );
  }
}

class Colaboradores extends StatelessWidget {
  const Colaboradores({
    super.key,
    required this.image,
    required this.nameUser,
    required this.numberTask,
    required this.numberNotes,
  });

  final Uint8List image;
  final String nameUser;
  final int numberTask;
  final int numberNotes;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ClipOval(
            child: Image.memory(
              height: 30,
              width: 30,
              image,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Expanded(
          child: Text(
            nameUser,
            style: TextStyle(
              fontSize: 14,
              color: textColorPrimary,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 4.0, right: 4),
          child: Row(
            children: [
              Icon(
                Icons.task_alt,
                size: 18,
                color: textColorPrimary,
              ),
              Text(
                '$numberTask',
                style: TextStyle(
                  color: textColorPrimary,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 4.0, right: 4),
          child: Row(
            children: [
              Icon(
                Icons.sticky_note_2,
                size: 18,
                color: textColorPrimary,
              ),
              Text(
                '$numberNotes',
                style: TextStyle(
                  color: textColorPrimary,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
