import 'package:agle_app/utils/constants.dart';
import 'package:flutter/material.dart';

class StatusTask extends StatelessWidget {
  const StatusTask({
    super.key,
    required this.status,
  });

  final String status;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 20,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: primaryColor,
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 3.0),
            child: Text(
              status,
              style: TextStyle(
                color: textColorPrimary,
                fontSize: 11,
              ),
            ),
          ),
          Icon(
            Icons.arrow_drop_down,
            color: textColorPrimary,
            size: 20,
          )
        ],
      ),
    );
  }
}
