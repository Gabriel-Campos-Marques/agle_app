import 'package:agle_app/utils/constants.dart';
import 'package:flutter/material.dart';

class ItemCardDashBoard extends StatelessWidget {
  const ItemCardDashBoard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: double.maxFinite,
        height: 60,
        decoration: BoxDecoration(
          color: secondColor,
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(
              blurRadius: 4,
              offset: Offset(0, 3),
              color: Color.fromRGBO(0, 0, 0, 0.15),
            )
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(
                    Icons.edit,
                    color: textColorPrimary,
                    size: 25,
                  ),
                  Text(
                    'Parte escrita',
                    style: TextStyle(
                      color: textColorPrimary,
                      fontSize: 25,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Qtd. 20',
                style: TextStyle(
                  color: textColorSecond,
                  fontSize: 20,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
