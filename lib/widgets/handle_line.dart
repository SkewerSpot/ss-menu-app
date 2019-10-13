import 'package:flutter/material.dart';

class HandleLine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        // margin: EdgeInsets.symmetric(horizontal: 135.0),
        width: 80.0,
        height: 4.0,
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(20.0),
        ),
      ),
    );
  }
}
