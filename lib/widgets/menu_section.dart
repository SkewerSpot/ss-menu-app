import 'package:flutter/material.dart';
import 'package:ss_menu/widgets/menu_item_card.dart';
import 'package:ss_menu/models/menu_item.dart';

class MenuSection extends StatefulWidget {
  final String sectionName;
  final List<MenuItem> sectionItems;

  MenuSection({@required this.sectionName, this.sectionItems});

  @override
  _MenuSectionState createState() => _MenuSectionState();
}

class _MenuSectionState extends State<MenuSection> {
  bool expanded = false;

  @override
  Widget build(BuildContext context) {
    List<Widget> sectionChildren = [];

    for (MenuItem item in this.widget.sectionItems) {
      sectionChildren.add(SizedBox(height: 15.0));
      sectionChildren.add(MenuItemCard(item: item, key: UniqueKey()));
    }

    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20.0),
      child: Column(
        children: <Widget>[
          GestureDetector(
            onTap: () {
              this.setState(() => this.expanded = !this.expanded);
            },
            child: Text(
              '${this.widget.sectionName} ${this.expanded ? "-" : "+"}',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Visibility(
            visible: this.expanded,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: sectionChildren,
            ),
          ),
        ],
      ),
    );
  }
}
