import 'package:flutter/foundation.dart';

/// The base class that represents a food item in app.
///
/// Contains bare-minimum properties to represent an item.
class Item {
  /// Name of the item.
  String name;

  /// Category the item belongs to.
  final String category;

  /// Whether the item is non-vegetarian or vegetarian.
  final bool isNonVeg;

  Item({
    @required this.name,
    @required this.category,
    @required this.isNonVeg,
  });
}
