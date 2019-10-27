import 'package:flutter/foundation.dart';
import 'item.dart';
import 'menu_item_type.dart';

/// Data class to represent an item in menu.
class MenuItem extends Item {
  /// Price of item.
  final double price;

  /// List of variants of item.
  final List<MenuItemType> types;

  /// URL for image thumbnail.
  final String imagePath;

  /// Item description.
  ///
  /// Useful for listing out ingredients of an item or
  /// constituents of a combo.
  ///
  /// For example, "Pizza Meal comes with 1 medium Pizza + 1 Coke."
  final String description;

  /// List of supported syrups or sauces.
  final List<String> syrups;

  /// List of supported toppings.
  final List<String> toppings;

  /// Number of syrups offered complimentary with the item
  final int freeSyrups;

  /// Number of toppings offered complimentary with the item
  final int freeToppings;

  /// List of constituents of a combo or meal.
  /// A better alternative to [description] for combos.
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
    this.freeSyrups = 0,
    this.freeToppings = 0,
    this.inclusions,
  }) : super(
          name: name,
          category: category,
          isNonVeg: isNonVeg,
        );
}
