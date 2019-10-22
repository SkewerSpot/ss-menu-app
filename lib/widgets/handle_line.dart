import 'package:flutter/material.dart';

/// Visual indicator for a dismissable modal screen.
///
/// Usually shown at the top of modal that does not occupy full
/// height of available screen size.
class HandleLine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
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
