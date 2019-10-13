import 'package:flutter/material.dart';
import 'package:ss_menu/constants.dart';

class ScreenActionButton extends StatelessWidget {
  final String text;
  final Function onPressed;

  ScreenActionButton({@required this.text, @required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      color: kThemeColorPurple,
      padding: EdgeInsets.all(20.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
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
