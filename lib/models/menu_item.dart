import 'package:flutter/foundation.dart';
import 'item.dart';
import 'menu_item_type.dart';

class MenuItem extends Item {
  final double price;
  final List<MenuItemType> types;
  final String imagePath;
  final String description;
  final List<String> syrups;
  final List<String> toppings;
  final List<String> inclusions;

  MenuItem({
    @required String name,
    @required String category,
    @required bool isNonVeg,
    this.price,
    this.types,
    this.imagePath,
    this.description,
    this.syrups,
    this.toppings,
    this.inclusions,
  }) : super(
          name: name,
          category: category,
          isNonVeg: isNonVeg,
        );
}
