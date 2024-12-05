import 'dart:typed_data';

import 'package:agle_app/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Tasks extends ChangeNotifier {
  String title;
  String area;
  String description;
  int priority;
  String status;
  String duration;
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
    required this.description,
    int? priority,
    String? status,
    required this.duration,
    required this.dateCreate,
    required this.deliveryDate,
    required this.responsible,
    Uint8List? pictureResponsible,
    Color? priorityColor,
    this.priorityIcon = FontAwesomeIcons.equals,
    this.iconCheckBox = Icons.check_box,
    this.code = '0',
  })  : priorityColor = priorityColor ?? priorityMedium,
        pictureResponsible = pictureResponsible ?? bytesGabriel,
        priority = priority ?? 3,
        status = status ?? 'Em aberto';
}
