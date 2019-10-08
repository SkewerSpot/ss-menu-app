import 'package:flutter/foundation.dart';
import 'menu_item_category.dart';

class Outlet {
  final String name;
  final List<MenuItemCategory> menu;

  Outlet({@required this.name, this.menu});
}
