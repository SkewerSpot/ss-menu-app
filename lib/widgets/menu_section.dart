import 'package:flutter/material.dart';
import 'package:ss_menu/widgets/menu_item_card.dart';
import 'package:ss_menu/models/menu_item.dart';

/// Visual representation of a [MenuItemCategory].
///
/// The section is collapsible, that is the items contained in it
/// may be shown (expanded) or hidden (collapsed).
///
/// It is collapsed by default. Tapping on the section name
/// expands the section to reveal [MenuItem]s in it.
/// Tapping again collapses the section.
/// This allows for more convenient scrolling through large menus.
/// So only section names are visible in a menu, all initially collapsed.
///
/// TODO: Refactor to accept only 1 prop of type [MenuItemCategory].
class MenuSection extends StatefulWidget {
  /// Name of the section.
  ///
  /// This is the text that can be tapped to collapse or expand the section.
  final String sectionName;

  /// List of items in section.
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
