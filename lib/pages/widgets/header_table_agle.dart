import 'package:agle_app/models/item_header_column.dart';
import 'package:agle_app/pages/widgets/header_column_agle.dart';
import 'package:flutter/material.dart';

class HeaderTableAgle extends StatelessWidget {
  final List<ItemHeaderColumn> headers;

  const HeaderTableAgle({super.key, required this.headers});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: Row(
        children: headers.map((header) {
          return SizedBox(
            width: header.widthColumn,
            child: HeaderColumnAgle(
              nameHeader: header.nameColumn,
              sizeColumn: header.widthColumn,
            ),
          );
        }).toList(),
      ),
    );
  }
}
