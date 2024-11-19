import 'package:agle_app/models/item_header_column.dart';
import 'package:flutter/material.dart';

class ItemsHeaderColumnController extends ChangeNotifier {
  List<ItemHeaderColumn> headers;

  ItemsHeaderColumnController({
    required this.headers,
  });
}
