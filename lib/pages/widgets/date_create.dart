import 'package:agle_app/utils/constants.dart';
import 'package:flutter/material.dart';

class DateCreate extends StatelessWidget {
  const DateCreate({
    super.key,
    required this.dataCriacao,
  });

  final String dataCriacao;

  @override
  Widget build(BuildContext context) {
    return Text(
      dataCriacao,
      style: TextStyle(
        color: textColorPrimary,
        fontSize: 14,
      ),
    );
  }
}
