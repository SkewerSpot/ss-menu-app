import 'package:flutter/material.dart';
import 'package:ss_menu/constants.dart';

/// A button for an interactable screen's primary action.
///
/// An interactable screen is one that allows user input in some form.
/// Screen action in that case may be input form submission.
/// In other cases, a screen action could be as simple next or cancel.
class ScreenActionButton extends StatelessWidget {
  /// Text to show inside the button.
  final String text;

  /// Callback to execute on button press.
  final Function onPressed;

  ScreenActionButton({@required this.text, @required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      color: kThemeColorPurple,
      padding: EdgeInsets.all(20.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: Text(
        this.text,
        style: TextStyle(
          color: Colors.white,
          fontSize: 17.0,
        ),
      ),
      onPressed: this.onPressed,
    );
  }
}
