import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ss_menu/data/outlets.dart';
import 'package:ss_menu/models/app_state.dart';
import 'package:ss_menu/widgets/menu_section.dart';

/// A container for multiple [MenuSection]s.
///
/// The parent widget to hold full menu for an outlet.
class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appState = Provider.of<AppState>(context);
    var selectedOutlet = appState.selectedOutlet;
    var menuSections = dOutlets[selectedOutlet].menu;

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
        itemCount: menuSections.length,
        itemBuilder: (context, itemIndex) {
          return MenuSection(
            sectionName: menuSections[itemIndex].name,
            sectionItems: menuSections[itemIndex].items,
          );
        },
      ),
    );
  }
}
