import 'package:flutter/foundation.dart';
import 'menu_item.dart';
import 'menu_item_type.dart';

class OrderItem extends MenuItem {
  final int sequenceNum;
  final MenuItemType selectedType;
  final bool withIceCream;
  final bool isDone;

  OrderItem({
    @required String name,
    @required String category,
    @required bool isNonVeg,
    double price,
    List<MenuItemType> types,
    String imagePath,
    String description,
    List<String> syrups,
    List<String> toppings,
    List<String> inclusions,
    this.sequenceNum = 0,
    this.selectedType,
    this.withIceCream = false,
    this.isDone = false,
  }) : super(
          name: name,
          category: category,
          isNonVeg: isNonVeg,
          price: price,
          types: types,
          imagePath: imagePath,
          description: description,
          syrups: syrups,
          toppings: toppings,
          inclusions: inclusions,
        );
}
