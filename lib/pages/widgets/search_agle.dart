import 'package:agle_app/utils/constants.dart';
import 'package:flutter/material.dart';

class SearchAgle extends StatelessWidget {
  const SearchAgle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      width: 300,
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: primaryColor,
          width: 3,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: TextField(
          textAlignVertical: TextAlignVertical.center,
          textAlign: TextAlign.start,
          style: TextStyle(
            color: textColorPrimary,
          ),
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(vertical: 11),
            hintText: 'Buscar',
            hintStyle: TextStyle(
              color: textColorPrimary,
              fontSize: 18,
            ),
            border: InputBorder.none,
            suffixIcon: Icon(
              Icons.search,
              size: 20,
              color: textColorPrimary,
            ),
          ),
        ),
      ),
    );
  }
}
