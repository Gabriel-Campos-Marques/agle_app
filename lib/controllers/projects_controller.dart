import 'package:agle_app/models/projects.dart';
import 'package:flutter/material.dart';

class ProjectsController extends ChangeNotifier {
  List<Projects> projects;
  ProjectsController({
    required this.projects,
  });
}
