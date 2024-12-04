import 'package:agle_app/controllers/projects_controller.dart';
import 'package:agle_app/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class WorkSpaceActive extends StatelessWidget {
  const WorkSpaceActive({
    super.key,
    required this.image,
    required this.nameProject,
    required this.projectOptions,
  });

  final String image;
  final String nameProject;
  final List<String> projectOptions;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _showProjectOptions(context),
      child: Container(
        margin: const EdgeInsets.all(8),
        width: 354,
        height: 57,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: primaryColor,
            width: 4,
          ),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                image,
                height: 40,
                width: 40,
              ),
            ),
            Text(
              nameProject,
              style: TextStyle(
                color: textColorPrimary,
                fontSize: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showProjectOptions(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Consumer<ProjectsController>(
          builder: (context, ProjectsController list, child) {
            return ListView.builder(
              itemCount: list.projects.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () {},
                    child: Row(
                      children: [
                        Image.memory(height: 50, list.projects[index].image),
                        Text(list.projects[index].nameProject),
                      ],
                    ),
                  ),
                );
              },
            );
          },
        );
      },
    );
  }
}
