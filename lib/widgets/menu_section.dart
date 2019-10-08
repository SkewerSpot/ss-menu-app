import 'package:flutter/material.dart';
import 'package:ss_menu/widgets/menu_item_card.dart';
import 'package:ss_menu/models/menu_item.dart';

class MenuSection extends StatelessWidget {
  final String sectionName;
  final List<MenuItem> sectionItems;

  MenuSection({@required this.sectionName, this.sectionItems});

  @override
  Widget build(BuildContext context) {
    List<Widget> sectionChildren = [];

    sectionChildren.add(Text(
      this.sectionName,
      style: TextStyle(
        fontSize: 20.0,
        fontWeight: FontWeight.bold,
      ),
    ));

    for (MenuItem item in this.sectionItems) {
      sectionChildren.add(SizedBox(height: 15.0));
      sectionChildren.add(MenuItemCard(item: item, key: UniqueKey()));
    }

    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: sectionChildren,
      ),
    );
  }
}
