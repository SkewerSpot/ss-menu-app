import 'package:flutter/material.dart';
import 'package:ss_menu/widgets/menu_item_card.dart';
import 'package:ss_menu/models/menu_item.dart';

class MenuSection extends StatelessWidget {
  final String sectionName;
  final List<MenuItem> sectionItems;

  MenuSection({@required this.sectionItems, this.sectionName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            this.sectionName,
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 15.0),
          MenuItemCard(key: UniqueKey()),
          SizedBox(height: 15.0),
          MenuItemCard(key: UniqueKey()),
          SizedBox(height: 15.0),
          MenuItemCard(key: UniqueKey()),
        ],
      ),
    );
  }
}
