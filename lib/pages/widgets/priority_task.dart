import 'package:flutter/material.dart';

class PriorityTask extends StatelessWidget {
  const PriorityTask({
    super.key,
    required this.priorityIcon,
    required this.priorityColor,
  });

  final IconData priorityIcon;
  final Color priorityColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50,
      child: Icon(
        priorityIcon,
        size: 30,
        color: priorityColor,
      ),
    );
  }
}
