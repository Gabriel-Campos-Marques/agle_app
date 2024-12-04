import 'package:agle_app/pages/widgets/header_table_agle.dart';
import 'package:agle_app/utils/constants.dart';
import 'package:flutter/material.dart';

class TableAgle extends StatelessWidget {
  const TableAgle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: const Column(
        children: [
          HeaderTableAgle(headers: []),
        ],
      ),
    );
  }
}
