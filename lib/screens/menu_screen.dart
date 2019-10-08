import 'package:flutter/material.dart';
import 'package:ss_menu/widgets/menu_screen_top_bar.dart';

class MenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFCCA30),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 10.0,
          ),
          child: MenuScreenTopBar(),
        ),
      ),
    );
  }
}
