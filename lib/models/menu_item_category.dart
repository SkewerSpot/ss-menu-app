import 'package:flutter/foundation.dart';
import 'menu_item.dart';

/// A section or category of items in an outlet's menu.
///
/// For example, "Pizza", "Main Course", "Snacks", etc.
class MenuItemCategory {
  /// Name of the category.
  final String name;

  /// List of items in the category.
  final List<MenuItem> items;

  MenuItemCategory({@required this.name, @required this.items});
}
