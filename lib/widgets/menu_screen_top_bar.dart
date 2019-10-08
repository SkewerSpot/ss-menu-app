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
        Icon(
          Icons.menu,
          size: 30.0,
        ),
        Text(
          'Order Menu',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
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
