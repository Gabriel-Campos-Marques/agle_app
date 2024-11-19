import 'package:agle_app/models/item_header_column.dart';
import 'package:agle_app/models/tasks.dart';
import 'package:agle_app/pages/widgets/area_task.dart';
import 'package:agle_app/pages/widgets/check_box_task.dart';
import 'package:agle_app/pages/widgets/date_create.dart';
import 'package:agle_app/pages/widgets/priority_task.dart';
import 'package:agle_app/pages/widgets/status_task.dart';
import 'package:agle_app/pages/widgets/title_task.dart';
import 'package:agle_app/pages/widgets/user_responsible.dart';
import 'package:agle_app/utils/constants.dart';
import 'package:flutter/material.dart';

class ItemTableAgle extends StatelessWidget {
  final List<ItemHeaderColumn> headers;
  final Tasks task;

  const ItemTableAgle({
    super.key,
    required this.headers,
    required this.task,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: secondColor,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(blurRadius: 4, color: Color.fromARGB(15, 0, 0, 0))
        ],
      ),
      child: SizedBox(
        height: 40,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: headers.map((header) {
            return Center(
              child: SizedBox(
                width: header.widthColumn,
                child: _buildColumnContent(header.nameColumn, task),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }

  Widget _buildColumnContent(String columnName, Tasks task) {
    switch (columnName.toLowerCase()) {
      case 'checkbox':
        return CheckBoxTask(iconCheckBox: task.iconCheckBox);
      case 'título':
      case 'titulo':
        return TitleTask(titleTask: task.title);
      case 'área':
      case 'area':
        return AreaTask(area: task.area);
      case 'prioridade':
        return PriorityTask(
            priorityColor: task.priorityColor, priorityIcon: task.priorityIcon);
      case 'status':
        return StatusTask(status: task.status);
      case 'data de criação':
      case 'data de criacao':
        return DateCreate(dataCriacao: task.dateCreate.toString());
      case 'responsável':
      case 'responsavel':
        return UserResponsible(
            bytes: task.pictureResponsible, userResponsible: task.responsible);
      default:
        return const SizedBox();
    }
  }
}
