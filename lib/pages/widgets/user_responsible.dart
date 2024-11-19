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
    return Row(
      children: [
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: secondColor,
          ),
          child: Image.memory(
            bytes,
            fit: BoxFit.cover,
          ),
        ),
        Text(
          userResponsible,
          style: TextStyle(
            color: textColorPrimary,
            fontSize: 12,
          ),
        )
      ],
    );
  }
}
