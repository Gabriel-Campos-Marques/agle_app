import 'package:agle_app/pages/widgets/item_card_dash_board.dart';
import 'package:agle_app/utils/constants.dart';
import 'package:flutter/material.dart';

class CardDashBoard extends StatelessWidget {
  const CardDashBoard({
    super.key,
    required this.titleCard,
  });

  final String titleCard;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              titleCard,
              style: TextStyle(
                color: textColorPrimary,
                fontSize: 20,
              ),
            ),
          ),
          Container(
            height: 300,
            width: 400,
            decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const ItemCardDashBoard(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Ver mais',
                    style: TextStyle(
                      color: textColorPrimary,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
