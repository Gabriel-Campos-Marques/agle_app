import 'dart:typed_data';

import 'package:agle_app/utils/constants.dart';
import 'package:flutter/material.dart';

class UserResponsible extends StatelessWidget {
  const UserResponsible({
    super.key,
    required this.bytes,
    required this.userResponsible,
  });

  final Uint8List bytes;
  final String userResponsible;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 500,
      child: Row(
        children: [
          ClipOval(
            child: Image.memory(
              height: 40,
              width: 40,
              bytes,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 4.0),
            child: Expanded(
              child: Text(
                userResponsible,
                style: TextStyle(
                  color: textColorPrimary,
                  fontSize: 12,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
