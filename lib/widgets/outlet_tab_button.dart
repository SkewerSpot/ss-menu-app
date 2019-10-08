import 'package:flutter/material.dart';

class OutletTabButton extends StatelessWidget {
  final String text;
  final bool isActive;

  OutletTabButton({@required this.text, this.isActive = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          this.text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 17.0,
            fontWeight: this.isActive ? FontWeight.w600 : FontWeight.w400,
          ),
        ),
        Container(
          width: this.isActive ? 15.0 : 0.0,
          child: Divider(
            color: Colors.white,
            thickness: 3.0,
          ),
        ),
      ],
    );
  }
}
