import 'package:agle_app/models/status_task.dart';
import 'package:flutter/material.dart';

class StatusTaskController extends ChangeNotifier {
  List<StatusTask> status;
  StatusTaskController({
    required this.status,
  });
}
