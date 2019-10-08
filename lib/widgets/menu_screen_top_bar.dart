import 'package:flutter/material.dart';

class MenuScreenTopBar extends StatelessWidget {
  const MenuScreenTopBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        SizedBox(
          height: 30.0,
          width: 30.0,
        ),
        Text(
          'Menu App',
          style: TextStyle(
            fontFamily: 'Pacifico',
            fontSize: 30.0,
          ),
        ),
        Icon(
          Icons.shopping_cart,
          size: 30.0,
        ),
      ],
    );
  }
}
