import 'package:agle_app/controllers/tasks_controller.dart';
import 'package:agle_app/models/tasks.dart';
import 'package:agle_app/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NewTask extends StatefulWidget {
  const NewTask({
    super.key,
  });

  @override
  State<NewTask> createState() => _NewTaskState();
}

class _NewTaskState extends State<NewTask> {
  String? selectedValueArea;
  String? selectedValueDuration;
  String? selectedValueUser;
  final List<String> optionsDuration = [
    '1 hora',
    '2 horas',
    '3 horas',
    '4 horas'
  ];
  final List<String> optionsArea = [
    'Desenvolvimento',
    'Parte escrita',
    'Custo',
    'Apresentação'
  ];
  final List<String> optionsUsers = ['Gabriel', 'Luiz', 'Elton', 'André'];

  TextEditingController textEditingControllerTitle = TextEditingController();
  TextEditingController textEditingControllerDescription =
      TextEditingController();
  TextEditingController textEditingControllerDateTask = TextEditingController();
  TextEditingController textEditingControllerArea = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        height: 600,
        width: 500,
        decoration: BoxDecoration(
          color: secondColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(
                  height: 30,
                  child: IconButton(
                    alignment: Alignment.center,
                    onPressed: () => Navigator.pop(context),
                    icon: Icon(
                      Icons.close,
                      color: textColorPrimary,
                      size: 24,
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    'Nova tarefa',
                    style: TextStyle(
                      color: textColorPrimary,
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
            Center(
              child: SizedBox(
                width: 400,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Título',
                      style: TextStyle(
                        color: textColorPrimary,
                        fontSize: 18,
                      ),
                    ),
                    Container(
                      width: double.maxFinite,
                      height: 50,
                      decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 8),
                        child: TextFormField(
                          controller: textEditingControllerTitle,
                          cursorColor: textColorPrimary,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                            color: textColorPrimary,
                          ),
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Center(
              child: SizedBox(
                width: 400,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Descrição',
                      style: TextStyle(
                        color: textColorPrimary,
                        fontSize: 18,
                      ),
                    ),
                    Container(
                      width: double.maxFinite,
                      height: 150,
                      decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 8),
                        child: TextFormField(
                          controller: textEditingControllerDescription,
                          cursorColor: textColorPrimary,
                          style: TextStyle(
                            fontSize: 16,
                            color: textColorPrimary,
                          ),
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                          ),
                          maxLines: null,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Center(
              child: SizedBox(
                width: 400,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Duração',
                          style: TextStyle(
                            color: textColorPrimary,
                            fontSize: 18,
                          ),
                        ),
                        Container(
                          width: 180,
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton<String>(
                              icon: const Icon(null),
                              value: selectedValueDuration,
                              hint: Text(
                                'Selecione uma opção',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: textColorPrimary, fontSize: 14),
                              ),
                              isExpanded: true,
                              items: optionsDuration.map((String option) {
                                return DropdownMenuItem<String>(
                                  value: option,
                                  child: Text(option),
                                );
                              }).toList(),
                              onChanged: (String? newValue) {
                                setState(() {
                                  selectedValueDuration = newValue;
                                });
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Data da tarefa',
                          style: TextStyle(
                            color: textColorPrimary,
                            fontSize: 18,
                          ),
                        ),
                        Container(
                          width: 180,
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: TextFormField(
                            controller: textEditingControllerDateTask,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: textColorPrimary,
                              fontSize: 16,
                            ),
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              hintText: 'dd/mm/yyyy',
                            ),
                            cursorColor: textColorPrimary,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Center(
              child: SizedBox(
                width: 400,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Área',
                          style: TextStyle(
                            color: textColorPrimary,
                            fontSize: 18,
                          ),
                        ),
                        Container(
                          width: 180,
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton<String>(
                              icon: const Icon(null),
                              value: selectedValueArea,
                              hint: Text(
                                'Selecione uma área',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: textColorPrimary, fontSize: 14),
                              ),
                              isExpanded: true,
                              items: optionsArea.map((String option) {
                                return DropdownMenuItem<String>(
                                  value: option,
                                  child: Text(option),
                                );
                              }).toList(),
                              onChanged: (String? newValue) {
                                setState(() {
                                  selectedValueArea = newValue;
                                });
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Responsável',
                          style: TextStyle(
                            color: textColorPrimary,
                            fontSize: 18,
                          ),
                        ),
                        Container(
                          width: 180,
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton<String>(
                              icon: const Icon(null),
                              value: selectedValueUser,
                              hint: Text(
                                'Selecione um responsável',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: textColorPrimary, fontSize: 14),
                              ),
                              isExpanded: true,
                              items: optionsUsers.map((String option) {
                                return DropdownMenuItem<String>(
                                  value: option,
                                  child: Text(option),
                                );
                              }).toList(),
                              onChanged: (String? newValue) {
                                setState(() {
                                  selectedValueUser = newValue;
                                });
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Center(
              child: Consumer<TasksController>(
                builder: (context, TasksController listTasks, child) {
                  return InkWell(
                    onTap: () {
                      listTasks.addTask(Tasks(
                        title: textEditingControllerTitle.text,
                        area: selectedValueArea!,
                        dateCreate: DateTime.now(),
                        deliveryDate: DateTime.parse('2024-02-14'),
                        responsible: selectedValueUser!,
                        description: textEditingControllerDescription.text,
                        duration: selectedValueDuration!,
                      ));
                      Navigator.pop(context);
                    },
                    child: Container(
                      width: 200,
                      height: 40,
                      decoration: BoxDecoration(
                          color: thirdColor,
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Text(
                          'Salvar e criar',
                          style: TextStyle(
                            color: textColorThird,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
