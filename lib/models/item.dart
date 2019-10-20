import 'package:flutter/foundation.dart';

class Item {
  String name;
  final String category;
  final bool isNonVeg;

  Item({
    @required this.name,
    @required this.category,
    @required this.isNonVeg,
  });
}
