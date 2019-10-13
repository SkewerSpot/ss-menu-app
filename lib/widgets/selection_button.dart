import 'package:flutter/material.dart';
import 'package:ss_menu/constants.dart';

/// A selectable button based on [RaisedButton].
///
/// Pressing the button toggles its selection.
///
/// Use a collection of [SelectionButton]s wrapped inside a
/// [SelectionButtonList] to simulate radio button or checkbox selection.
class SelectionButton extends StatelessWidget {
  /// Used as button's text as well as its selection value.
  final String value;

  /// Indicates whether this button is currently selected.
  final bool isSelected;

  /// Button's press event handler.
  final Function onPressed;

  SelectionButton({
    @required this.value,
    this.isSelected,
    @required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: this.isSelected ? kThemeColorRed : Colors.transparent,
      child: Text(
        this.value,
        style: TextStyle(
          color: this.isSelected ? Colors.white : Colors.black,
        ),
      ),
      onPressed: this.onPressed,
    );
  }
}
