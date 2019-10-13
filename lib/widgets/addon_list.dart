import 'package:flutter/material.dart';
import 'package:ss_menu/constants.dart';

class AddonList extends StatelessWidget {
  final List<String> addons;

  AddonList({@required this.addons});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: this.addons.map((addon) {
        return Container(
          padding: EdgeInsets.all(2.0),
          margin: EdgeInsets.only(right: 5.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            border: Border.all(
              color: kThemeColorRed,
            ),
          ),
          child: Text(
            addon,
            style: TextStyle(
              color: kThemeColorRed,
            ),
          ),
        );
      }).toList(),
    );
  }
}
