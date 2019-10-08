import 'package:flutter/material.dart';
import 'package:ss_menu/widgets/menu_section.dart';
import 'package:ss_menu/models/menu_item_category.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<MenuItemCategory> categories = [];
    categories.add(MenuItemCategory(
      name: 'All-Day Breakfast',
      items: [],
    ));
    categories.add(MenuItemCategory(
      name: 'Main Course',
      items: [],
    ));

    return Container(
      padding: EdgeInsets.only(
        top: 10.0,
        left: 20.0,
        right: 20.0,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
      ),
      child: ListView.builder(
        itemCount: categories.length,
        itemBuilder: (context, itemIndex) {
          return MenuSection(
            sectionName: categories[itemIndex].name,
            sectionItems: categories[itemIndex].items,
          );
        },
      ),
    );
  }
}
