import 'package:flutter/material.dart';
import 'package:ss_menu/screens/menu_screen.dart';

void main() => runApp(SSMenuApp());

class SSMenuApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MenuScreen(),
    );
  }
}
