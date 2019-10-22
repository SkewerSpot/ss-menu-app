import 'package:flutter/foundation.dart';
import 'menu_item_category.dart';

/// Data class to represent an outlet.
class Outlet {
  /// Name of the outlet.
  final String name;

  /// Full menu of the outlet.
  ///
  /// A list of menu categories (sections),
  /// where each category further contains a list of [MenuItem]s.
  final List<MenuItemCategory> menu;

  Outlet({@required this.name, this.menu});
}
