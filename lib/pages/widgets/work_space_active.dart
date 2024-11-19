import 'package:agle_app/utils/constants.dart';
import 'package:flutter/material.dart';

class WorkSpaceActive extends StatelessWidget {
  const WorkSpaceActive({
    super.key,
    required this.image,
    required this.nameProject,
  });

  final String image;
  final String nameProject;

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
