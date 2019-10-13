import 'package:flutter/material.dart';
import 'package:ss_menu/widgets/selection_button.dart';

/// Interface for [SelectionButtonList]'s onChanged callback.
typedef void OnChangedCallback(
  String changedValue,
  List<String> updatedSelectedValues,
);

/// A simple list of selection buttons.
///
/// Uses [Wrap] to create a row of [SelectionButton]s based on given [values],
/// and keeps a track of button selections.
class SelectionButtonList extends StatefulWidget {
  /// A [SelectionButton] is created for each string in this list.
  final List<String> values;

  ///  The upper limit of simultaneous button selections allowed.
  /// Beyond this limit, pressing adding buttons will not do anything
  /// unless already selected buttons are de-selected.
  final int maxSelections;

  /// Callback to execute on change of [selectedValues],
  /// that is whenever a button is selected or de-selected.
  final OnChangedCallback onChanged;

  SelectionButtonList({
    this.values = const [],
    this.maxSelections = 9999, // simulating double.Infinity
    this.onChanged,
  });

  @override
  _SelectionButtonListState createState() => _SelectionButtonListState();
}

class _SelectionButtonListState extends State<SelectionButtonList> {
  List<String> selectedValues = [];

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: this.widget.values.map((value) {
        final bool isValueSelected = this.selectedValues.contains(value);

        return Container(
          margin: EdgeInsets.only(right: 5.0),
          child: SelectionButton(
            value: value,
            isSelected: isValueSelected,
            onPressed: () {
              this.setState(() {
                if (isValueSelected) {
                  final valueIndex = this.selectedValues.indexOf(value);
                  this.selectedValues = [
                    ...this.selectedValues.sublist(0, valueIndex),
                    ...this.selectedValues.sublist(valueIndex + 1),
                  ]; // remove value from list
                } else {
                  if (this.selectedValues.length < this.widget.maxSelections)
                    this.selectedValues = [
                      ...this.selectedValues,
                      value,
                    ]; // add value to list
                }
              });
              this.widget.onChanged(value, this.selectedValues);
            },
          ),
        );
      }).toList(),
    );
  }
}
