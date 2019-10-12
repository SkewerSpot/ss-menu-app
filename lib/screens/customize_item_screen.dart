import 'package:flutter/material.dart';
import 'package:ss_menu/constants.dart';
import 'package:ss_menu/models/menu_item.dart';
import 'package:ss_menu/models/menu_item_type.dart';
import 'package:ss_menu/widgets/radio_tile_list.dart';

class CustomizeItemScreen extends StatefulWidget {
  final MenuItem item;

  CustomizeItemScreen({@required this.item});

  @override
  _CustomizeItemScreenState createState() => _CustomizeItemScreenState();
}

class _CustomizeItemScreenState extends State<CustomizeItemScreen> {
  String selectedType;
  String selectedSyrup;

  @override
  void initState() {
    super.initState();

    this.selectedType = this.widget.item.types[0].name;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Text(
              'Customize ${this.widget.item.name}',
              style: kHeadingStyle,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            'Pick type',
            style: kSubHeadingStyle,
          ),
          Expanded(
            child: RadioTileList(
              options: Map.fromIterable(
                this.widget.item.types,
                key: (type) => (type as MenuItemType).name,
                value: (type) => (type as MenuItemType).price.toString(),
              ),
              selectedValue: this.selectedType,
              onChanged: (String value) {
                this.setState(() => this.selectedType = value);
              },
            ),
          ),
        ],
      ),
    );
  }
}
