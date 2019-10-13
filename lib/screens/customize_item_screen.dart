import 'package:flutter/material.dart';
import 'package:ss_menu/constants.dart';
import 'package:ss_menu/models/menu_item.dart';
import 'package:ss_menu/models/menu_item_type.dart';
import 'package:ss_menu/widgets/radio_tile_list.dart';
import 'package:ss_menu/widgets/selection_button_list.dart';
import 'package:ss_menu/widgets/handle_line.dart';

class CustomizeItemScreen extends StatefulWidget {
  final MenuItem item;

  CustomizeItemScreen({@required this.item});

  @override
  _CustomizeItemScreenState createState() => _CustomizeItemScreenState();
}

class _CustomizeItemScreenState extends State<CustomizeItemScreen> {
  String selectedType;
  List<String> selectedSyrups;
  List<String> selectedToppings;

  @override
  void initState() {
    super.initState();

    this.selectedType = this.widget.item.types[0].name;
    this.selectedSyrups = [];
    this.selectedToppings = [];
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Column(
        children: <Widget>[
          HandleLine(),
          Expanded(
            child: ListView(
              children: [
                SizedBox(
                  height: 10.0,
                ),
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
                RadioTileList(
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
                Visibility(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        'Pick syrups',
                        style: kSubHeadingStyle,
                      ),
                      SelectionButtonList(
                        values: this.widget.item.syrups,
                        onChanged: (String value, List<String> selectedValues) {
                          this.setState(
                              () => this.selectedSyrups = selectedValues);
                        },
                      ),
                    ],
                  ),
                  visible: this.widget.item.syrups != null &&
                      this.widget.item.syrups.length > 0,
                ),
                Visibility(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        'Pick toppings',
                        style: kSubHeadingStyle,
                      ),
                      SelectionButtonList(
                        values: this.widget.item.toppings,
                        onChanged: (String value, List<String> selectedValues) {
                          this.setState(
                              () => this.selectedToppings = selectedValues);
                        },
                      ),
                    ],
                  ),
                  visible: this.widget.item.toppings != null &&
                      this.widget.item.toppings.length > 0,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
