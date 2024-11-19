import 'dart:typed_data';

import 'package:flutter/material.dart';

class Tasks extends ChangeNotifier {
  String title;
  String area;
  int priority;
  String status;
  DateTime dateCreate;
  DateTime deliveryDate;
  String responsible;
  Uint8List pictureResponsible;
  Color priorityColor;
  IconData priorityIcon;
  IconData iconCheckBox;
  String code;

  Tasks({
    required this.title,
    required this.area,
    required this.priority,
    required this.status,
    required this.dateCreate,
    required this.deliveryDate,
    required this.responsible,
    required this.pictureResponsible,
    required this.priorityColor,
    required this.priorityIcon,
    required this.iconCheckBox,
    required this.code,
  });
}
